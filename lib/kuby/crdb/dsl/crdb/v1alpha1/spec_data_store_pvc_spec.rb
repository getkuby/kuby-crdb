module Kuby::CRDB::DSL::CRDB::V1alpha1
  class SpecDataStorePvcSpec < ::KubeDSL::DSLObject
    value_field :storage_class_name
    value_field :volume_mode
    object_field(:selector) { Kuby::CRDB::DSL::CRDB::V1alpha1::SpecDataStorePvcSpecSelector.new }
    value_field :access_modes
    object_field(:data_source) { Kuby::CRDB::DSL::CRDB::V1alpha1::SpecDataStorePvcSpecDataSource.new }
    value_field :volume_name
    object_field(:resources) { Kuby::CRDB::DSL::CRDB::V1alpha1::SpecDataStorePvcSpecResources.new }

    validates :storage_class_name, field: { format: :string }, presence: false
    validates :volume_mode, field: { format: :string }, presence: false
    validates :selector, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::SpecDataStorePvcSpecSelector }
    validates :access_modes, field: { format: :string }, presence: false
    validates :data_source, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::SpecDataStorePvcSpecDataSource }
    validates :volume_name, field: { format: :string }, presence: false
    validates :resources, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::SpecDataStorePvcSpecResources }

    def serialize
      {}.tap do |result|
        result[:storageClassName] = storage_class_name
        result[:volumeMode] = volume_mode
        result[:selector] = selector.serialize
        result[:accessModes] = access_modes
        result[:dataSource] = data_source.serialize
        result[:volumeName] = volume_name
        result[:resources] = resources.serialize
      end
    end

    def kind_sym
      :spec_data_store_pvc_spec
    end
  end
end
