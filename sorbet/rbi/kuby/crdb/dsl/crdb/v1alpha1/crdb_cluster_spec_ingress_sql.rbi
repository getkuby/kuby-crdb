# typed: strict

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecIngressSql < ::KubeDSL::DSLObject
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

            T::Sig::WithoutRuntime.sig {
              params(
                elem_name: T.nilable(Symbol),
                block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecIngressSqlTls))
              ).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecIngressSqlTls])
            }
            def tls(elem_name = nil, &block); end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
            def host(val = nil); end

            T::Sig::WithoutRuntime.sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def annotations(&block); end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
            def ingress_class_name(val = nil); end
          end
        end
      end
    end
  end
end