# typed: strict

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecDataStorePvcSpec < ::KubeDSL::DSLObject
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
            def storage_class_name(val = nil); end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
            def volume_mode(val = nil); end

            T::Sig::WithoutRuntime.sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStorePvcSpecSelector) }
            def selector; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def selector_present?; end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
            def access_modes(val = nil); end

            T::Sig::WithoutRuntime.sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStorePvcSpecDataSource) }
            def data_source; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def data_source_present?; end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
            def volume_name(val = nil); end

            T::Sig::WithoutRuntime.sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStorePvcSpecResources) }
            def resources; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def resources_present?; end
          end
        end
      end
    end
  end
end