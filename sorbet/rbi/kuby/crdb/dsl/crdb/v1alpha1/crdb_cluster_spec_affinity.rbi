# typed: strict

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecAffinity < ::KubeDSL::DSLObject
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods
            include KubeDSL::ValueFields::InstanceMethods

            T::Sig::WithoutRuntime.sig {
              returns(
                T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
              )
            }
            def serialize; end

            T::Sig::WithoutRuntime.sig { returns(Symbol) }
            def kind_sym; end

            T::Sig::WithoutRuntime.sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAffinity) }
            def pod_affinity; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def pod_affinity_present?; end

            T::Sig::WithoutRuntime.sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinity) }
            def node_affinity; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def node_affinity_present?; end

            T::Sig::WithoutRuntime.sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAntiAffinity) }
            def pod_anti_affinity; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def pod_anti_affinity_present?; end
          end
        end
      end
    end
  end
end