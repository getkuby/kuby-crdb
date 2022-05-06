# typed: strict

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecDataStorePvc < ::KubeDSL::DSLObject
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

            T::Sig::WithoutRuntime.sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStorePvcSource) }
            def source; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def source_present?; end

            T::Sig::WithoutRuntime.sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStorePvcSpec) }
            def spec; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def spec_present?; end
          end
        end
      end
    end
  end
end