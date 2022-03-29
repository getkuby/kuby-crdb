module Kuby::CRDB::DSL::CRDB::V1alpha1
  class SpecDataStorePvcSource < ::KubeDSL::DSLObject
    value_field :read_only
    value_field :claim_name

    validates :read_only, field: { format: :boolean }, presence: true
    validates :claim_name, field: { format: :string }, presence: true

    def serialize
      {}.tap do |result|
        result[:readOnly] = read_only
        result[:claimName] = claim_name
      end
    end

    def kind_sym
      :spec_data_store_pvc_source
    end
  end
end
