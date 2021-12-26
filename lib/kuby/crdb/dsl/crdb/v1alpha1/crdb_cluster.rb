module Kuby::CRDB::DSL::CRDB::V1alpha1
  class CrdbCluster < ::KubeDSL::DSLObject
    key_value_field(:status, format: :string)
    key_value_field(:spec, format: :string)
    value_field :api_version
    object_field(:metadata) { KubeDSL::DSL::Meta::V1::ObjectMeta.new }

    validates :status, kv: { value_format: :string }, presence: true
    validates :spec, kv: { value_format: :string }, presence: true
    validates :api_version, field: { format: :string }, presence: false
    validates :metadata, object: { kind_of: KubeDSL::DSL::Meta::V1::ObjectMeta }

    def serialize
      {}.tap do |result|
        result[:status] = status.serialize
        result[:kind] = "CrdbCluster"
        result[:spec] = spec.serialize
        result[:apiVersion] = api_version
        result[:metadata] = metadata.serialize
      end
    end

    def kind_sym
      :crdb_cluster
    end
  end
end
