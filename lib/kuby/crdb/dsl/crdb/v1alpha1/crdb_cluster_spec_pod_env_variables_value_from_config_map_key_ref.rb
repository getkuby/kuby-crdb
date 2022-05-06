# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecPodEnvVariablesValueFromConfigMapKeyRef < ::KubeDSL::DSLObject
            value_field :optional
            value_field :name
            value_field :key

            validates :optional, field: { format: :boolean }, presence: true
            validates :name, field: { format: :string }, presence: false
            validates :key, field: { format: :string }, presence: true

            def serialize
              {}.tap do |result|
                result[:optional] = optional
                result[:name] = name
                result[:key] = key
              end
            end

            def kind_sym
              :crdb_cluster_spec_pod_env_variables_value_from_config_map_key_ref
            end
          end
        end
      end
    end
  end
end