module Kuby::CRDB::DSL::CRDB::V1alpha1
  class SpecAffinity < ::KubeDSL::DSLObject
    object_field(:pod_affinity) { Kuby::CRDB::DSL::CRDB::V1alpha1::SpecAffinityPodAffinity.new }
    object_field(:node_affinity) { Kuby::CRDB::DSL::CRDB::V1alpha1::SpecAffinityNodeAffinity.new }
    object_field(:pod_anti_affinity) { Kuby::CRDB::DSL::CRDB::V1alpha1::SpecAffinityPodAntiAffinity.new }

    validates :pod_affinity, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::SpecAffinityPodAffinity }
    validates :node_affinity, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::SpecAffinityNodeAffinity }
    validates :pod_anti_affinity, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::SpecAffinityPodAntiAffinity }

    def serialize
      {}.tap do |result|
        result[:podAffinity] = pod_affinity.serialize
        result[:nodeAffinity] = node_affinity.serialize
        result[:podAntiAffinity] = pod_anti_affinity.serialize
      end
    end

    def kind_sym
      :spec_affinity
    end
  end
end
