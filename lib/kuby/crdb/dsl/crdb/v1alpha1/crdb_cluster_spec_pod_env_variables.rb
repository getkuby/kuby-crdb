# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecPodEnvVariables < ::KubeDSL::DSLObject
            object_field(:value_from) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecPodEnvVariablesValueFrom.new }
            value_field :name
            value_field :value

            validates :value_from, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecPodEnvVariablesValueFrom }
            validates :name, field: { format: :string }, presence: true
            validates :value, field: { format: :string }, presence: false

            def serialize
              {}.tap do |result|
                result[:valueFrom] = value_from.serialize
                result[:name] = name
                result[:value] = value
              end
            end

            def kind_sym
              :crdb_cluster_spec_pod_env_variables
            end
          end
        end
      end
    end
  end
end