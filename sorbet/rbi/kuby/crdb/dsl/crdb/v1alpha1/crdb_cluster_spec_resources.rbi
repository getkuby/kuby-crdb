# typed: strict

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecResources < ::KubeDSL::DSLObject
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

            T::Sig::WithoutRuntime.sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def requests(&block); end

            T::Sig::WithoutRuntime.sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def limits(&block); end
          end
        end
      end
    end
  end
end