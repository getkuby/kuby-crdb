require 'kuby'
require 'kuby/crdb/version'

module Kuby
  module CRDB
    class CRDBError < StandardError; end
    class OperatorDeployError < CRDBError; end
    class APIResourcesError < CRDBError; end

    class Plugin < ::Kuby::Plugin
      CRD_URL = "https://raw.githubusercontent.com/cockroachdb/cockroach-operator/v#{Kuby::CRDB::CRDB_OPERATOR_VERSION}/install/crds.yaml".freeze
      OPERATOR_URL = "https://raw.githubusercontent.com/cockroachdb/cockroach-operator/v#{Kuby::CRDB::CRDB_OPERATOR_VERSION}/install/operator.yaml".freeze
      NAMESPACE = 'cockroach-operator-system'.freeze
      OPERATOR_DEPLOYMENT_NAME = 'cockroach-operator-manager'.freeze
      WAIT_INTERVAL = 5  # seconds
      WAIT_MAX = 120     # seconds

      REPLICA_SET_MATCH_LABELS = {
        'app' => 'cockroach-operator'
      }

      REPLICA_SET_MATCH_LABELS.freeze

      def setup
        Kuby.logger.info('Deploying CockroachDB operator')
        operator_deployed? ? upgrade_operator : install_operator

        wait_for_operator do
          Kuby.logger.info('Waiting for CockroachDB operator deployment')
        end

        wait_for_api_resources do
          Kuby.logger.info('Waiting for API resources to become available')
        end

        Kuby.logger.info('CockroachDB setup finished')
      end

      private

      def install_operator
        kubernetes_cli.apply_uri(CRD_URL)
        kubernetes_cli.apply_uri(OPERATOR_URL)
      end

      def upgrade_operator
        # TODO: add upgrade logic
      end

      def wait_for_operator
        time_elapsed = 0

        loop do
          break if operator_ready?

          if time_elapsed >= WAIT_MAX
            raise OperatorDeployError, 'timeout waiting for operator to start. '\
              "Waited #{time_elapsed}s."
          end

          yield

          sleep WAIT_INTERVAL
          time_elapsed += WAIT_INTERVAL
        end
      end

      def wait_for_api_resources
        time_elapsed = 0

        loop do
          begin
            if time_elapsed >= WAIT_MAX
              raise APIResourcesError, 'timeout waiting for API resources to '\
                "become available. Waited #{time_elapsed}s."
            end

            kubernetes_cli.api_resources
            break
          rescue KubernetesCLI::KubernetesError
            yield
            sleep WAIT_INTERVAL
            time_elapsed += WAIT_INTERVAL
          end
        end
      end

      def operator_ready?
        depl = operator_deployment
        rs = find_operator_rs(depl)
        return false unless depl && rs

        observed_generation = depl.dig('status', 'observedGeneration')
        current_generation = depl.dig('metadata', 'generation')
        return false unless observed_generation == current_generation

        rollout_data = { 'replicas' => 0 }.merge(
          depl['status'].slice(
            *%w(replicas updatedReplicas availableReplicas unavailableReplicas)
          )
        )

        desired_replicas = depl['spec']['replicas'].to_i
        rs_desired_replicas = rs['spec']['replicas'].to_i

        rs_ready?(rs) &&
          rs_desired_replicas == desired_replicas &&
          rollout_data['updatedReplicas'].to_i == desired_replicas &&
          rollout_data['updatedReplicas'].to_i == rollout_data['availableReplicas'].to_i
      end

      def rs_ready?(rs)
        observed_generation = rs.dig('status', 'observedGeneration')
        current_generation = rs.dig('metadata', 'generation')
        return false if observed_generation != current_generation

        rollout_data = { "replicas" => 0 }.merge(
          rs['status'].slice('replicas', 'availableReplicas', 'readyReplicas')
        )

        desired_replicas = rs['spec']['replicas'].to_i
        desired_replicas == rollout_data['availableReplicas'].to_i &&
          desired_replicas == rollout_data['readyReplicas'].to_i
      end

      def operator_deployment
        kubernetes_cli.get_object(
          'Deployment', NAMESPACE, OPERATOR_DEPLOYMENT_NAME
        )
      rescue ::KubernetesCLI::GetResourceError
        nil
      end

      def find_operator_rs(depl)
        all_rs_data = kubernetes_cli.get_objects('ReplicaSet', NAMESPACE, REPLICA_SET_MATCH_LABELS)
        current_revision = depl.dig('metadata', 'annotations', 'deployment.kubernetes.io/revision')

        all_rs_data.find do |rs|
          rs.dig('metadata', 'ownerReferences').any? { |ref| ref['uid'] == depl.dig('metadata', 'uid') } &&
            rs.dig('metadata', 'annotations', 'deployment.kubernetes.io/revision') == current_revision
        end
      rescue ::KubernetesCLI::GetResourceError
        nil
      end

      def operator_deployed?
        # TODO
        false
      end

      def kubernetes_cli
        provider.kubernetes_cli
      end

      def provider
        environment.kubernetes.provider
      end
    end
  end
end