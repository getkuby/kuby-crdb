module Kuby::CRDB::DSL::CRDB::V1alpha1
  class Spec < ::KubeDSL::DSLObject
    object_field(:image) { Kuby::CRDB::DSL::CRDB::V1alpha1::SpecImage.new }
    value_field :additional_args
    value_field :min_available
    value_field :max_sql_memory
    value_field :cache
    value_field :tls_enabled
    key_value_field(:node_selector, format: :string)
    value_field :http_port
    object_field(:affinity) { Kuby::CRDB::DSL::CRDB::V1alpha1::SpecAffinity.new }
    value_field :tolerations
    value_field :nodes
    value_field :cockroach_db_version
    object_field(:resources) { Kuby::CRDB::DSL::CRDB::V1alpha1::SpecResources.new }
    key_value_field(:additional_annotations, format: :string)
    value_field :client_tls_secret
    key_value_field(:additional_labels, format: :string)
    value_field :sql_port
    value_field :max_unavailable
    value_field :node_tls_secret
    value_field :pod_env_variables
    object_field(:data_store) { Kuby::CRDB::DSL::CRDB::V1alpha1::SpecDataStore.new }
    value_field :grpc_port

    validates :image, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::SpecImage }
    validates :additional_args, field: { format: :string }, presence: false
    validates :min_available, field: { format: :integer }, presence: true
    validates :max_sql_memory, field: { format: :string }, presence: false
    validates :cache, field: { format: :string }, presence: false
    validates :tls_enabled, field: { format: :boolean }, presence: true
    validates :node_selector, kv: { value_format: :string }, presence: true
    validates :http_port, field: { format: :integer }, presence: true
    validates :affinity, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::SpecAffinity }
    validates :tolerations, field: { format: :string }, presence: false
    validates :nodes, field: { format: :integer }, presence: true
    validates :cockroach_db_version, field: { format: :string }, presence: false
    validates :resources, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::SpecResources }
    validates :additional_annotations, kv: { value_format: :string }, presence: true
    validates :client_tls_secret, field: { format: :string }, presence: false
    validates :additional_labels, kv: { value_format: :string }, presence: true
    validates :sql_port, field: { format: :integer }, presence: true
    validates :max_unavailable, field: { format: :integer }, presence: true
    validates :node_tls_secret, field: { format: :string }, presence: false
    validates :pod_env_variables, field: { format: :string }, presence: false
    validates :data_store, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::SpecDataStore }
    validates :grpc_port, field: { format: :integer }, presence: true

    def serialize
      {}.tap do |result|
        result[:image] = image.serialize
        result[:additionalArgs] = additional_args
        result[:minAvailable] = min_available
        result[:maxSQLMemory] = max_sql_memory
        result[:cache] = cache
        result[:tlsEnabled] = tls_enabled
        result[:nodeSelector] = node_selector.serialize
        result[:httpPort] = http_port
        result[:affinity] = affinity.serialize
        result[:tolerations] = tolerations
        result[:nodes] = nodes
        result[:cockroachDBVersion] = cockroach_db_version
        result[:resources] = resources.serialize
        result[:additionalAnnotations] = additional_annotations.serialize
        result[:clientTLSSecret] = client_tls_secret
        result[:additionalLabels] = additional_labels.serialize
        result[:sqlPort] = sql_port
        result[:maxUnavailable] = max_unavailable
        result[:nodeTLSSecret] = node_tls_secret
        result[:podEnvVariables] = pod_env_variables
        result[:dataStore] = data_store.serialize
        result[:grpcPort] = grpc_port
      end
    end

    def kind_sym
      :spec
    end
  end
end
