module Kuby::CRDB::DSL::CRDB::V1alpha1
  class SpecResources < ::KubeDSL::DSLObject
    key_value_field(:requests, format: :string)
    key_value_field(:limits, format: :string)

    validates :requests, kv: { value_format: :string }, presence: true
    validates :limits, kv: { value_format: :string }, presence: true

    def serialize
      {}.tap do |result|
        result[:requests] = requests.serialize
        result[:limits] = limits.serialize
      end
    end

    def kind_sym
      :spec_resources
    end
  end
end
