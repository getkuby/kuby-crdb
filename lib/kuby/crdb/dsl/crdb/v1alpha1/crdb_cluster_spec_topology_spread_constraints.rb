# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecTopologySpreadConstraints < ::KubeDSL::DSLObject
            value_field :when_unsatisfiable
            value_field :max_skew
            object_field(:label_selector) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecTopologySpreadConstraintsLabelSelector.new }
            value_field :topology_key

            validates :when_unsatisfiable, field: { format: :string }, presence: true
            validates :max_skew, field: { format: :integer }, presence: true
            validates :label_selector, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecTopologySpreadConstraintsLabelSelector }
            validates :topology_key, field: { format: :string }, presence: true

            def serialize
              {}.tap do |result|
                result[:whenUnsatisfiable] = when_unsatisfiable
                result[:maxSkew] = max_skew
                result[:labelSelector] = label_selector.serialize
                result[:topologyKey] = topology_key
              end
            end

            def kind_sym
              :crdb_cluster_spec_topology_spread_constraints
            end
          end
        end
      end
    end
  end
end