module Kuby::CRDB::DSL::CRDB::V1alpha1
  class SpecDataStoreHostPath < ::KubeDSL::DSLObject
    value_field :path
    value_field :type

    validates :path, field: { format: :string }, presence: true
    validates :type, field: { format: :string }, presence: false

    def serialize
      {}.tap do |result|
        result[:path] = path
        result[:type] = type
      end
    end

    def kind_sym
      :spec_data_store_host_path
    end
  end
end
