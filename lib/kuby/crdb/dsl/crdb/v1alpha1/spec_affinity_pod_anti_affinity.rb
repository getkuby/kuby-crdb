module Kuby::CRDB::DSL::CRDB::V1alpha1
  class SpecAffinityPodAntiAffinity < ::KubeDSL::DSLObject
    value_field :required_during_scheduling_ignored_during_execution
    value_field :preferred_during_scheduling_ignored_during_execution

    validates :required_during_scheduling_ignored_during_execution, field: { format: :string }, presence: false
    validates :preferred_during_scheduling_ignored_during_execution, field: { format: :string }, presence: false

    def serialize
      {}.tap do |result|
        result[:requiredDuringSchedulingIgnoredDuringExecution] = required_during_scheduling_ignored_during_execution
        result[:preferredDuringSchedulingIgnoredDuringExecution] = preferred_during_scheduling_ignored_during_execution
      end
    end

    def kind_sym
      :spec_affinity_pod_anti_affinity
    end
  end
end
