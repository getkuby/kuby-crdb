# typed: strict

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecAffinityNodeAffinity < ::KubeDSL::DSLObject
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

            T::Sig::WithoutRuntime.sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecution) }
            def required_during_scheduling_ignored_during_execution; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def required_during_scheduling_ignored_during_execution_present?; end

            T::Sig::WithoutRuntime.sig {
              params(
                elem_name: T.nilable(Symbol),
                block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecution))
              ).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecution])
            }
            def preferred_during_scheduling_ignored_during_executions(elem_name = nil, &block); end
          end
        end
      end
    end
  end
end