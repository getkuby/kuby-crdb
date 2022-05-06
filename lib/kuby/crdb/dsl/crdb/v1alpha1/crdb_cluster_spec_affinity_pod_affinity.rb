# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecAffinityPodAffinity < ::KubeDSL::DSLObject
            array_field(:required_during_scheduling_ignored_during_execution) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecution.new }
            array_field(:preferred_during_scheduling_ignored_during_execution) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecution.new }

            validates :required_during_scheduling_ignored_during_executions, array: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecution }, presence: false
            validates :preferred_during_scheduling_ignored_during_executions, array: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecution }, presence: false

            def serialize
              {}.tap do |result|
                result[:requiredDuringSchedulingIgnoredDuringExecution] = required_during_scheduling_ignored_during_executions.map(&:serialize)
                result[:preferredDuringSchedulingIgnoredDuringExecution] = preferred_during_scheduling_ignored_during_executions.map(&:serialize)
              end
            end

            def kind_sym
              :crdb_cluster_spec_affinity_pod_affinity
            end
          end
        end
      end
    end
  end
end