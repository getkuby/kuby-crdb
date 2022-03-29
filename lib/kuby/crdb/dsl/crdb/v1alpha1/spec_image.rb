module Kuby::CRDB::DSL::CRDB::V1alpha1
  class SpecImage < ::KubeDSL::DSLObject
    value_field :pull_policy
    value_field :name
    value_field :pull_secret

    validates :pull_policy, field: { format: :string }, presence: false
    validates :name, field: { format: :string }, presence: true
    validates :pull_secret, field: { format: :string }, presence: false

    def serialize
      {}.tap do |result|
        result[:pullPolicy] = pull_policy
        result[:name] = name
        result[:pullSecret] = pull_secret
      end
    end

    def kind_sym
      :spec_image
    end
  end
end
