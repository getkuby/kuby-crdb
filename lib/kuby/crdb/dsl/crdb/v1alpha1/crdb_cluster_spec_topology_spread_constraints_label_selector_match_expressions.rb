# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecTopologySpreadConstraintsLabelSelectorMatchExpressions < ::KubeDSL::DSLObject
            value_field :operator
            value_field :values
            value_field :key

            validates :operator, field: { format: :string }, presence: true
            validates :values, field: { format: :string }, presence: false
            validates :key, field: { format: :string }, presence: true

            def serialize
              {}.tap do |result|
                result[:operator] = operator
                result[:values] = values
                result[:key] = key
              end
            end

            def kind_sym
              :crdb_cluster_spec_topology_spread_constraints_label_selector_match_expressions
            end
          end
        end
      end
    end
  end
end