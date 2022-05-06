# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterList < ::KubeDSL::DSLObject
            array_field(:item) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbCluster.new }
            value_field :api_version
            object_field(:metadata) { KubeDSL::DSL::Meta::V1::ListMeta.new }

            validates :items, array: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbCluster }, presence: false
            validates :api_version, field: { format: :string }, presence: false
            validates :metadata, object: { kind_of: KubeDSL::DSL::Meta::V1::ListMeta }

            def serialize
              {}.tap do |result|
                result[:items] = items.map(&:serialize)
                result[:kind] = "CrdbClusterList"
                result[:apiVersion] = api_version
                result[:metadata] = metadata.serialize
              end
            end

            def kind_sym
              :crdb_cluster_list
            end
          end
        end
      end
    end
  end
end