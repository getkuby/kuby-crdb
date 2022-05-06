# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            object_field(:pod_affinity_term) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTerm.new }
            value_field :weight

            validates :pod_affinity_term, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTerm }
            validates :weight, field: { format: :integer }, presence: true

            def serialize
              {}.tap do |result|
                result[:podAffinityTerm] = pod_affinity_term.serialize
                result[:weight] = weight
              end
            end

            def kind_sym
              :crdb_cluster_spec_affinity_pod_affinity_preferred_during_scheduling_ignored_during_execution
            end
          end
        end
      end
    end
  end
end