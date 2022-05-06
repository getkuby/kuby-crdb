# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreference < ::KubeDSL::DSLObject
            array_field(:match_field) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreferenceMatchFields.new }
            array_field(:match_expression) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreferenceMatchExpressions.new }

            validates :match_fields, array: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreferenceMatchFields }, presence: false
            validates :match_expressions, array: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreferenceMatchExpressions }, presence: false

            def serialize
              {}.tap do |result|
                result[:matchFields] = match_fields.map(&:serialize)
                result[:matchExpressions] = match_expressions.map(&:serialize)
              end
            end

            def kind_sym
              :crdb_cluster_spec_affinity_node_affinity_preferred_during_scheduling_ignored_during_execution_preference
            end
          end
        end
      end
    end
  end
end