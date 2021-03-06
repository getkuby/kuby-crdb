# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecDataStorePvcSpecDataSource < ::KubeDSL::DSLObject
            value_field :api_group
            value_field :kind
            value_field :name

            validates :api_group, field: { format: :string }, presence: false
            validates :kind, field: { format: :string }, presence: true
            validates :name, field: { format: :string }, presence: true

            def serialize
              {}.tap do |result|
                result[:apiGroup] = api_group
                result[:kind] = kind
                result[:name] = name
              end
            end

            def kind_sym
              :crdb_cluster_spec_data_store_pvc_spec_data_source
            end
          end
        end
      end
    end
  end
end