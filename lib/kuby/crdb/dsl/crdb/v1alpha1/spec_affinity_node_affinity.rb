module Kuby::CRDB::DSL::CRDB::V1alpha1
  class SpecAffinityNodeAffinity < ::KubeDSL::DSLObject
    object_field(:required_during_scheduling_ignored_during_execution) { Kuby::CRDB::DSL::CRDB::V1alpha1::SpecAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecution.new }
    value_field :preferred_during_scheduling_ignored_during_execution

    validates :required_during_scheduling_ignored_during_execution, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::SpecAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecution }
    validates :preferred_during_scheduling_ignored_during_execution, field: { format: :string }, presence: false

    def serialize
      {}.tap do |result|
        result[:requiredDuringSchedulingIgnoredDuringExecution] = required_during_scheduling_ignored_during_execution.serialize
        result[:preferredDuringSchedulingIgnoredDuringExecution] = preferred_during_scheduling_ignored_during_execution
      end
    end

    def kind_sym
      :spec_affinity_node_affinity
    end
  end
end
