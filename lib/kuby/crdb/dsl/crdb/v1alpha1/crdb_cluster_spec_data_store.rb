# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecDataStore < ::KubeDSL::DSLObject
            object_field(:pvc) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStorePvc.new }
            value_field :supports_auto_resize
            object_field(:host_path) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStoreHostPath.new }

            validates :pvc, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStorePvc }
            validates :supports_auto_resize, field: { format: :boolean }, presence: true
            validates :host_path, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStoreHostPath }

            def serialize
              {}.tap do |result|
                result[:pvc] = pvc.serialize
                result[:supportsAutoResize] = supports_auto_resize
                result[:hostPath] = host_path.serialize
              end
            end

            def kind_sym
              :crdb_cluster_spec_data_store
            end
          end
        end
      end
    end
  end
end