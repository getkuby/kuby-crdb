# typed: strong
module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbCluster < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterStatus) }
            def status; end

            sig { returns(T::Boolean) }
            def status_present?; end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpec) }
            def spec; end

            sig { returns(T::Boolean) }
            def spec_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def api_version(val = nil); end

            sig { returns(KubeDSL::DSL::Meta::V1::ObjectMeta) }
            def metadata; end

            sig { returns(T::Boolean) }
            def metadata_present?; end
          end

          class CrdbClusterList < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbCluster))).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbCluster]) }
            def items(elem_name = nil, &block); end

            sig { params(val: T.nilable(String)).returns(String) }
            def api_version(val = nil); end

            sig { returns(KubeDSL::DSL::Meta::V1::ListMeta) }
            def metadata; end

            sig { returns(T::Boolean) }
            def metadata_present?; end
          end

          class CrdbClusterSpec < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecImage) }
            def image; end

            sig { returns(T::Boolean) }
            def image_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def additional_args(val = nil); end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def min_available(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def max_sql_memory(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def cache(val = nil); end

            sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
            def tls_enabled(val = nil); end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def node_selector(&block); end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def http_port(val = nil); end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinity) }
            def affinity; end

            sig { returns(T::Boolean) }
            def affinity_present?; end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecTolerations))).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecTolerations]) }
            def tolerations(elem_name = nil, &block); end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def nodes(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def cockroach_db_version(val = nil); end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecResources) }
            def resources; end

            sig { returns(T::Boolean) }
            def resources_present?; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def additional_annotations(&block); end

            sig { params(val: T.nilable(String)).returns(String) }
            def client_tls_secret(val = nil); end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def additional_labels(&block); end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def sql_port(val = nil); end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def max_unavailable(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def node_tls_secret(val = nil); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecPodEnvVariables))).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecPodEnvVariables]) }
            def pod_env_variables(elem_name = nil, &block); end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStore) }
            def data_store; end

            sig { returns(T::Boolean) }
            def data_store_present?; end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def grpc_port(val = nil); end
          end

          class CrdbClusterSpecAffinity < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAffinity) }
            def pod_affinity; end

            sig { returns(T::Boolean) }
            def pod_affinity_present?; end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinity) }
            def node_affinity; end

            sig { returns(T::Boolean) }
            def node_affinity_present?; end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAntiAffinity) }
            def pod_anti_affinity; end

            sig { returns(T::Boolean) }
            def pod_anti_affinity_present?; end
          end

          class CrdbClusterSpecAffinityNodeAffinity < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecution) }
            def required_during_scheduling_ignored_during_execution; end

            sig { returns(T::Boolean) }
            def required_during_scheduling_ignored_during_execution_present?; end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecution))).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecution]) }
            def preferred_during_scheduling_ignored_during_executions(elem_name = nil, &block); end
          end

          class CrdbClusterSpecAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreferenceMatchFields < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class CrdbClusterSpecAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreference < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreferenceMatchFields))).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreferenceMatchFields]) }
            def match_fields(elem_name = nil, &block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreferenceMatchExpressions))).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreferenceMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class CrdbClusterSpecAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreferenceMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class CrdbClusterSpecAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreference) }
            def preference; end

            sig { returns(T::Boolean) }
            def preference_present?; end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def weight(val = nil); end
          end

          class CrdbClusterSpecAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchFields < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class CrdbClusterSpecAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTerms < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchFields))).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchFields]) }
            def match_fields(elem_name = nil, &block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchExpressions))).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class CrdbClusterSpecAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class CrdbClusterSpecAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTerms))).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTerms]) }
            def node_selector_terms(elem_name = nil, &block); end
          end

          class CrdbClusterSpecAffinityPodAffinity < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecution))).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecution]) }
            def required_during_scheduling_ignored_during_executions(elem_name = nil, &block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecution))).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecution]) }
            def preferred_during_scheduling_ignored_during_executions(elem_name = nil, &block); end
          end

          class CrdbClusterSpecAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelectorMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class CrdbClusterSpecAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTerm < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelector) }
            def label_selector; end

            sig { returns(T::Boolean) }
            def label_selector_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def namespaces(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def topology_key(val = nil); end
          end

          class CrdbClusterSpecAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelector < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def match_labels(&block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelectorMatchExpressions))).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelectorMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class CrdbClusterSpecAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTerm) }
            def pod_affinity_term; end

            sig { returns(T::Boolean) }
            def pod_affinity_term_present?; end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def weight(val = nil); end
          end

          class CrdbClusterSpecAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelectorMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class CrdbClusterSpecAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelector < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def match_labels(&block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelectorMatchExpressions))).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelectorMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class CrdbClusterSpecAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelector) }
            def label_selector; end

            sig { returns(T::Boolean) }
            def label_selector_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def namespaces(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def topology_key(val = nil); end
          end

          class CrdbClusterSpecAffinityPodAntiAffinity < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecution))).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecution]) }
            def required_during_scheduling_ignored_during_executions(elem_name = nil, &block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecution))).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecution]) }
            def preferred_during_scheduling_ignored_during_executions(elem_name = nil, &block); end
          end

          class CrdbClusterSpecAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelector < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def match_labels(&block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelectorMatchExpressions))).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelectorMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class CrdbClusterSpecAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelectorMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class CrdbClusterSpecAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTerm < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelector) }
            def label_selector; end

            sig { returns(T::Boolean) }
            def label_selector_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def namespaces(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def topology_key(val = nil); end
          end

          class CrdbClusterSpecAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTerm) }
            def pod_affinity_term; end

            sig { returns(T::Boolean) }
            def pod_affinity_term_present?; end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def weight(val = nil); end
          end

          class CrdbClusterSpecAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelector < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def match_labels(&block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelectorMatchExpressions))).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelectorMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class CrdbClusterSpecAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelectorMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class CrdbClusterSpecAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelector) }
            def label_selector; end

            sig { returns(T::Boolean) }
            def label_selector_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def namespaces(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def topology_key(val = nil); end
          end

          class CrdbClusterSpecDataStore < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStorePvc) }
            def pvc; end

            sig { returns(T::Boolean) }
            def pvc_present?; end

            sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
            def supports_auto_resize(val = nil); end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStoreHostPath) }
            def host_path; end

            sig { returns(T::Boolean) }
            def host_path_present?; end
          end

          class CrdbClusterSpecDataStoreHostPath < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def path(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def type(val = nil); end
          end

          class CrdbClusterSpecDataStorePvc < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStorePvcSource) }
            def source; end

            sig { returns(T::Boolean) }
            def source_present?; end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStorePvcSpec) }
            def spec; end

            sig { returns(T::Boolean) }
            def spec_present?; end
          end

          class CrdbClusterSpecDataStorePvcSource < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
            def read_only(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def claim_name(val = nil); end
          end

          class CrdbClusterSpecDataStorePvcSpec < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def storage_class_name(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def volume_mode(val = nil); end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStorePvcSpecSelector) }
            def selector; end

            sig { returns(T::Boolean) }
            def selector_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def access_modes(val = nil); end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStorePvcSpecDataSource) }
            def data_source; end

            sig { returns(T::Boolean) }
            def data_source_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def volume_name(val = nil); end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStorePvcSpecResources) }
            def resources; end

            sig { returns(T::Boolean) }
            def resources_present?; end
          end

          class CrdbClusterSpecDataStorePvcSpecDataSource < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def api_group(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def kind(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def name(val = nil); end
          end

          class CrdbClusterSpecDataStorePvcSpecResources < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def requests(&block); end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def limits(&block); end
          end

          class CrdbClusterSpecDataStorePvcSpecSelector < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def match_labels(&block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStorePvcSpecSelectorMatchExpressions))).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStorePvcSpecSelectorMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class CrdbClusterSpecDataStorePvcSpecSelectorMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class CrdbClusterSpecImage < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def pull_policy(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def name(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def pull_secret(val = nil); end
          end

          class CrdbClusterSpecPodEnvVariables < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecPodEnvVariablesValueFrom) }
            def value_from; end

            sig { returns(T::Boolean) }
            def value_from_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def name(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def value(val = nil); end
          end

          class CrdbClusterSpecPodEnvVariablesValueFrom < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecPodEnvVariablesValueFromSecretKeyRef) }
            def secret_key_ref; end

            sig { returns(T::Boolean) }
            def secret_key_ref_present?; end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecPodEnvVariablesValueFromFieldRef) }
            def field_ref; end

            sig { returns(T::Boolean) }
            def field_ref_present?; end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecPodEnvVariablesValueFromResourceFieldRef) }
            def resource_field_ref; end

            sig { returns(T::Boolean) }
            def resource_field_ref_present?; end

            sig { returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecPodEnvVariablesValueFromConfigMapKeyRef) }
            def config_map_key_ref; end

            sig { returns(T::Boolean) }
            def config_map_key_ref_present?; end
          end

          class CrdbClusterSpecPodEnvVariablesValueFromConfigMapKeyRef < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
            def optional(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def name(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class CrdbClusterSpecPodEnvVariablesValueFromFieldRef < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def field_path(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def api_version(val = nil); end
          end

          class CrdbClusterSpecPodEnvVariablesValueFromResourceFieldRef < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def container_name(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def resource(val = nil); end
          end

          class CrdbClusterSpecPodEnvVariablesValueFromSecretKeyRef < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
            def optional(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def name(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class CrdbClusterSpecResources < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def requests(&block); end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def limits(&block); end
          end

          class CrdbClusterSpecTolerations < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def value(val = nil); end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def toleration_seconds(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def effect(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class CrdbClusterStatus < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def cluster_status(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def version(val = nil); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterStatusConditions))).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterStatusConditions]) }
            def conditions(elem_name = nil, &block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterStatusOperatorActions))).returns(T::Array[Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterStatusOperatorActions]) }
            def operator_actions(elem_name = nil, &block); end

            sig { params(val: T.nilable(String)).returns(String) }
            def crdbcontainerimage(val = nil); end
          end

          class CrdbClusterStatusConditions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def status(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def type(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def last_transition_time(val = nil); end
          end

          class CrdbClusterStatusOperatorActions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def status(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def type(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def message(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def last_transition_time(val = nil); end
          end
        end
      end
    end
  end
end
