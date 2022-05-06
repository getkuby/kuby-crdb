# typed: strict

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTerm < ::KubeDSL::DSLObject
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

            T::Sig::WithoutRuntime.sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelector) }
            def label_selector; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def label_selector_present?; end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
            def namespaces(val = nil); end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
            def topology_key(val = nil); end
          end
        end
      end
    end
  end
end