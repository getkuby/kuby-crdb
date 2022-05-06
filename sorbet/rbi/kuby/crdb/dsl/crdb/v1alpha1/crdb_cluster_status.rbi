# typed: strict

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterStatus < ::KubeDSL::DSLObject
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

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
            def cluster_status(val = nil); end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
            def version(val = nil); end

            T::Sig::WithoutRuntime.sig {
              params(
                elem_name: T.nilable(Symbol),
                block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterStatusConditions))
              ).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterStatusConditions])
            }
            def conditions(elem_name = nil, &block); end

            T::Sig::WithoutRuntime.sig {
              params(
                elem_name: T.nilable(Symbol),
                block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterStatusOperatorActions))
              ).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterStatusOperatorActions])
            }
            def operator_actions(elem_name = nil, &block); end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
            def crdbcontainerimage(val = nil); end
          end
        end
      end
    end
  end
end