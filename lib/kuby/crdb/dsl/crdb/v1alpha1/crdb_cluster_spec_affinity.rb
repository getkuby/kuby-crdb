# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecAffinity < ::KubeDSL::DSLObject
            object_field(:pod_affinity) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAffinity.new }
            object_field(:node_affinity) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinity.new }
            object_field(:pod_anti_affinity) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAntiAffinity.new }

            validates :pod_affinity, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAffinity }
            validates :node_affinity, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinity }
            validates :pod_anti_affinity, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAntiAffinity }

            def serialize
              {}.tap do |result|
                result[:podAffinity] = pod_affinity.serialize
                result[:nodeAffinity] = node_affinity.serialize
                result[:podAntiAffinity] = pod_anti_affinity.serialize
              end
            end

            def kind_sym
              :crdb_cluster_spec_affinity
            end
          end
        end
      end
    end
  end
end