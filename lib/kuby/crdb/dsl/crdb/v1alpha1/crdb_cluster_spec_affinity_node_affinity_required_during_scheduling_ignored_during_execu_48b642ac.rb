# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTerms < ::KubeDSL::DSLObject
            array_field(:match_field) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchFields.new }
            array_field(:match_expression) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchExpressions.new }

            validates :match_fields, array: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchFields }, presence: false
            validates :match_expressions, array: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchExpressions }, presence: false

            def serialize
              {}.tap do |result|
                result[:matchFields] = match_fields.map(&:serialize)
                result[:matchExpressions] = match_expressions.map(&:serialize)
              end
            end

            def kind_sym
              :crdb_cluster_spec_affinity_node_affinity_required_during_scheduling_ignored_during_execution_node_selector_terms
            end
          end
        end
      end
    end
  end
end