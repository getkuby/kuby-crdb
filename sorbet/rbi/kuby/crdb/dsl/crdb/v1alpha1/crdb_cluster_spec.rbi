# typed: strict

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpec < ::KubeDSL::DSLObject
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

            T::Sig::WithoutRuntime.sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecImage) }
            def image; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def image_present?; end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
            def additional_args(val = nil); end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(Integer)).returns(Integer) }
            def min_available(val = nil); end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
            def max_sql_memory(val = nil); end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
            def cache(val = nil); end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
            def tls_enabled(val = nil); end

            T::Sig::WithoutRuntime.sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def node_selector(&block); end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(Integer)).returns(Integer) }
            def http_port(val = nil); end

            T::Sig::WithoutRuntime.sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinity) }
            def affinity; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def affinity_present?; end

            T::Sig::WithoutRuntime.sig {
              params(
                elem_name: T.nilable(Symbol),
                block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecTolerations))
              ).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecTolerations])
            }
            def tolerations(elem_name = nil, &block); end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(Integer)).returns(Integer) }
            def nodes(val = nil); end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
            def cockroach_db_version(val = nil); end

            T::Sig::WithoutRuntime.sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecResources) }
            def resources; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def resources_present?; end

            T::Sig::WithoutRuntime.sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def additional_annotations(&block); end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
            def client_tls_secret(val = nil); end

            T::Sig::WithoutRuntime.sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def additional_labels(&block); end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(Integer)).returns(Integer) }
            def sql_port(val = nil); end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(Integer)).returns(Integer) }
            def max_unavailable(val = nil); end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
            def node_tls_secret(val = nil); end

            T::Sig::WithoutRuntime.sig {
              params(
                elem_name: T.nilable(Symbol),
                block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecPodEnvVariables))
              ).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecPodEnvVariables])
            }
            def pod_env_variables(elem_name = nil, &block); end

            T::Sig::WithoutRuntime.sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStore) }
            def data_store; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def data_store_present?; end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(Integer)).returns(Integer) }
            def grpc_port(val = nil); end
          end
        end
      end
    end
  end
end