module Kuby::CRDB::DSL::CRDB::V1alpha1
  class SpecDataStorePvc < ::KubeDSL::DSLObject
    object_field(:source) { Kuby::CRDB::DSL::CRDB::V1alpha1::SpecDataStorePvcSource.new }
    object_field(:spec) { Kuby::CRDB::DSL::CRDB::V1alpha1::SpecDataStorePvcSpec.new }

    validates :source, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::SpecDataStorePvcSource }
    validates :spec, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::SpecDataStorePvcSpec }

    def serialize
      {}.tap do |result|
        result[:source] = source.serialize
        result[:spec] = spec.serialize
      end
    end

    def kind_sym
      :spec_data_store_pvc
    end
  end
end
