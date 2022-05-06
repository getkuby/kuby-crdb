# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelector < ::KubeDSL::DSLObject
            key_value_field(:match_labels, format: :string)
            array_field(:match_expression) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelectorMatchExpressions.new }

            validates :match_labels, kv: { value_format: :string }, presence: true
            validates :match_expressions, array: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelectorMatchExpressions }, presence: false

            def serialize
              {}.tap do |result|
                result[:matchLabels] = match_labels.serialize
                result[:matchExpressions] = match_expressions.map(&:serialize)
              end
            end

            def kind_sym
              :crdb_cluster_spec_affinity_pod_affinity_required_during_scheduling_ignored_during_execution_label_selector
            end
          end
        end
      end
    end
  end
end