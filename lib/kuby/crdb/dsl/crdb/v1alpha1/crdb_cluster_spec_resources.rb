# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecResources < ::KubeDSL::DSLObject
            key_value_field(:requests, format: :string)
            key_value_field(:limits, format: :string)

            validates :requests, kv: { value_format: :string }, presence: true
            validates :limits, kv: { value_format: :string }, presence: true

            def serialize
              {}.tap do |result|
                result[:requests] = requests.serialize
                result[:limits] = limits.serialize
              end
            end

            def kind_sym
              :crdb_cluster_spec_resources
            end
          end
        end
      end
    end
  end
end