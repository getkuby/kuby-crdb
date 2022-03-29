module Kuby::CRDB::DSL::CRDB::V1alpha1
  class SpecAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
    value_field :node_selector_terms

    validates :node_selector_terms, field: { format: :string }, presence: true

    def serialize
      {}.tap do |result|
        result[:nodeSelectorTerms] = node_selector_terms
      end
    end

    def kind_sym
      :spec_affinity_node_affinity_required_during_scheduling_ignored_during_execution
    end
  end
end
