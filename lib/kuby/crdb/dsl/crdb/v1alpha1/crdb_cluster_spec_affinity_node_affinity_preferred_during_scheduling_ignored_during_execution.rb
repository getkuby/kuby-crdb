# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            object_field(:preference) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreference.new }
            value_field :weight

            validates :preference, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreference }
            validates :weight, field: { format: :integer }, presence: true

            def serialize
              {}.tap do |result|
                result[:preference] = preference.serialize
                result[:weight] = weight
              end
            end

            def kind_sym
              :crdb_cluster_spec_affinity_node_affinity_preferred_during_scheduling_ignored_during_execution
            end
          end
        end
      end
    end
  end
end