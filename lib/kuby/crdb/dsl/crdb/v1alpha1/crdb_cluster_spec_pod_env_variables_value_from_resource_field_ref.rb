# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecPodEnvVariablesValueFromResourceFieldRef < ::KubeDSL::DSLObject
            value_field :container_name
            value_field :resource

            validates :container_name, field: { format: :string }, presence: false
            validates :resource, field: { format: :string }, presence: true

            def serialize
              {}.tap do |result|
                result[:containerName] = container_name
                result[:resource] = resource
              end
            end

            def kind_sym
              :crdb_cluster_spec_pod_env_variables_value_from_resource_field_ref
            end
          end
        end
      end
    end
  end
end