# typed: strict

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
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

            T::Sig::WithoutRuntime.sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreference) }
            def preference; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def preference_present?; end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(Integer)).returns(Integer) }
            def weight(val = nil); end
          end
        end
      end
    end
  end
end