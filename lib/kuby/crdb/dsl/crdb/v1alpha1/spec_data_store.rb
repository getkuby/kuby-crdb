module Kuby::CRDB::DSL::CRDB::V1alpha1
  class SpecDataStore < ::KubeDSL::DSLObject
    object_field(:pvc) { Kuby::CRDB::DSL::CRDB::V1alpha1::SpecDataStorePvc.new }
    value_field :supports_auto_resize
    object_field(:host_path) { Kuby::CRDB::DSL::CRDB::V1alpha1::SpecDataStoreHostPath.new }

    validates :pvc, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::SpecDataStorePvc }
    validates :supports_auto_resize, field: { format: :boolean }, presence: true
    validates :host_path, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::SpecDataStoreHostPath }

    def serialize
      {}.tap do |result|
        result[:pvc] = pvc.serialize
        result[:supportsAutoResize] = supports_auto_resize
        result[:hostPath] = host_path.serialize
      end
    end

    def kind_sym
      :spec_data_store
    end
  end
end
