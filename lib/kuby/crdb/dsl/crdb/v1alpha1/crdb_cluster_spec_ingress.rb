# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecIngress < ::KubeDSL::DSLObject
            object_field(:ui) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecIngressUi.new }
            object_field(:sql) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecIngressSql.new }

            validates :ui, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecIngressUi }
            validates :sql, object: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecIngressSql }

            def serialize
              {}.tap do |result|
                result[:ui] = ui.serialize
                result[:sql] = sql.serialize
              end
            end

            def kind_sym
              :crdb_cluster_spec_ingress
            end
          end
        end
      end
    end
  end
end