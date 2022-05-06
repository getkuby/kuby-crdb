# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecDataStoreHostPath < ::KubeDSL::DSLObject
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
              :crdb_cluster_spec_data_store_host_path
            end
          end
        end
      end
    end
  end
end