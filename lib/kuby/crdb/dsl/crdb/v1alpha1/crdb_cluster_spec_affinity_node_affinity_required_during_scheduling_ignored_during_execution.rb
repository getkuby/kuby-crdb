# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            array_field(:node_selector_term) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTerms.new }

            validates :node_selector_terms, array: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTerms }, presence: true

            def serialize
              {}.tap do |result|
                result[:nodeSelectorTerms] = node_selector_terms.map(&:serialize)
              end
            end

            def kind_sym
              :crdb_cluster_spec_affinity_node_affinity_required_during_scheduling_ignored_during_execution
            end
          end
        end
      end
    end
  end
end