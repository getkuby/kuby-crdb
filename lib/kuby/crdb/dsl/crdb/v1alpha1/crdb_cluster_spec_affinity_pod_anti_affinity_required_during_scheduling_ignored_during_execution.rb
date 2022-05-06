# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            object_field(:label_selector) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelector.new }
            value_field :namespaces
            value_field :topology_key

            validates :label_selector, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelector }
            validates :namespaces, field: { format: :string }, presence: false
            validates :topology_key, field: { format: :string }, presence: true

            def serialize
              {}.tap do |result|
                result[:labelSelector] = label_selector.serialize
                result[:namespaces] = namespaces
                result[:topologyKey] = topology_key
              end
            end

            def kind_sym
              :crdb_cluster_spec_affinity_pod_anti_affinity_required_during_scheduling_ignored_during_execution
            end
          end
        end
      end
    end
  end
end