# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecDataStorePvcSpec < ::KubeDSL::DSLObject
            value_field :storage_class_name
            value_field :volume_mode
            object_field(:selector) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStorePvcSpecSelector.new }
            value_field :access_modes
            object_field(:data_source) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStorePvcSpecDataSource.new }
            value_field :volume_name
            object_field(:resources) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStorePvcSpecResources.new }

            validates :storage_class_name, field: { format: :string }, presence: false
            validates :volume_mode, field: { format: :string }, presence: false
            validates :selector, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStorePvcSpecSelector }
            validates :access_modes, field: { format: :string }, presence: false
            validates :data_source, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStorePvcSpecDataSource }
            validates :volume_name, field: { format: :string }, presence: false
            validates :resources, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStorePvcSpecResources }

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
              :crdb_cluster_spec_data_store_pvc_spec
            end
          end
        end
      end
    end
  end
end