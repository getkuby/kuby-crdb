module Kuby::CRDB::DSL::CRDB::V1alpha1
  class SpecDataStorePvcSpecSelector < ::KubeDSL::DSLObject
    key_value_field(:match_labels, format: :string)
    value_field :match_expressions

    validates :match_labels, kv: { value_format: :string }, presence: true
    validates :match_expressions, field: { format: :string }, presence: false

    def serialize
      {}.tap do |result|
        result[:matchLabels] = match_labels.serialize
        result[:matchExpressions] = match_expressions
      end
    end

    def kind_sym
      :spec_data_store_pvc_spec_selector
    end
  end
end
