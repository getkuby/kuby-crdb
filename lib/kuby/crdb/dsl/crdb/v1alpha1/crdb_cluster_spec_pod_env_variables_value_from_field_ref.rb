# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecPodEnvVariablesValueFromFieldRef < ::KubeDSL::DSLObject
            value_field :field_path
            value_field :api_version

            validates :field_path, field: { format: :string }, presence: true
            validates :api_version, field: { format: :string }, presence: false

            def serialize
              {}.tap do |result|
                result[:fieldPath] = field_path
                result[:apiVersion] = api_version
              end
            end

            def kind_sym
              :crdb_cluster_spec_pod_env_variables_value_from_field_ref
            end
          end
        end
      end
    end
  end
end