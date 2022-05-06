# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecPodEnvVariablesValueFrom < ::KubeDSL::DSLObject
            object_field(:secret_key_ref) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecPodEnvVariablesValueFromSecretKeyRef.new }
            object_field(:field_ref) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecPodEnvVariablesValueFromFieldRef.new }
            object_field(:resource_field_ref) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecPodEnvVariablesValueFromResourceFieldRef.new }
            object_field(:config_map_key_ref) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecPodEnvVariablesValueFromConfigMapKeyRef.new }

            validates :secret_key_ref, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecPodEnvVariablesValueFromSecretKeyRef }
            validates :field_ref, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecPodEnvVariablesValueFromFieldRef }
            validates :resource_field_ref, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecPodEnvVariablesValueFromResourceFieldRef }
            validates :config_map_key_ref, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecPodEnvVariablesValueFromConfigMapKeyRef }

            def serialize
              {}.tap do |result|
                result[:secretKeyRef] = secret_key_ref.serialize
                result[:fieldRef] = field_ref.serialize
                result[:resourceFieldRef] = resource_field_ref.serialize
                result[:configMapKeyRef] = config_map_key_ref.serialize
              end
            end

            def kind_sym
              :crdb_cluster_spec_pod_env_variables_value_from
            end
          end
        end
      end
    end
  end
end