# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecDataStorePvcSource < ::KubeDSL::DSLObject
            value_field :read_only
            value_field :claim_name

            validates :read_only, field: { format: :boolean }, presence: true
            validates :claim_name, field: { format: :string }, presence: true

            def serialize
              {}.tap do |result|
                result[:readOnly] = read_only
                result[:claimName] = claim_name
              end
            end

            def kind_sym
              :crdb_cluster_spec_data_store_pvc_source
            end
          end
        end
      end
    end
  end
end