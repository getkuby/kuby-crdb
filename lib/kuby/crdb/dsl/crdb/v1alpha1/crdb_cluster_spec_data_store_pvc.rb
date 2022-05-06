# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecDataStorePvc < ::KubeDSL::DSLObject
            object_field(:source) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStorePvcSource.new }
            object_field(:spec) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStorePvcSpec.new }

            validates :source, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStorePvcSource }
            validates :spec, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecDataStorePvcSpec }

            def serialize
              {}.tap do |result|
                result[:source] = source.serialize
                result[:spec] = spec.serialize
              end
            end

            def kind_sym
              :crdb_cluster_spec_data_store_pvc
            end
          end
        end
      end
    end
  end
end