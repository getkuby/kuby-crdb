# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelectorMatchExpressions < ::KubeDSL::DSLObject
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
              :crdb_cluster_spec_affinity_pod_anti_affinity_required_during_scheduling_ignored_during_execution_label_selector_match_expressions
            end
          end
        end
      end
    end
  end
end