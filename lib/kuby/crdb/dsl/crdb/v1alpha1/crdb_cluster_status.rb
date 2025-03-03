# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterStatus < ::KubeDSL::DSLObject
            value_field :sql_host
            value_field :version
            array_field(:operator_action) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterStatusOperatorActions.new }
            value_field :cluster_status
            array_field(:condition) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterStatusConditions.new }
            value_field :crdbcontainerimage

            validates :sql_host, field: { format: :string }, presence: false
            validates :version, field: { format: :string }, presence: false
            validates :operator_actions, array: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterStatusOperatorActions }, presence: false
            validates :cluster_status, field: { format: :string }, presence: false
            validates :conditions, array: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterStatusConditions }, presence: false
            validates :crdbcontainerimage, field: { format: :string }, presence: false

            def serialize
              {}.tap do |result|
                result[:sqlHost] = sql_host
                result[:version] = version
                result[:operatorActions] = operator_actions.map(&:serialize)
                result[:clusterStatus] = cluster_status
                result[:conditions] = conditions.map(&:serialize)
                result[:crdbcontainerimage] = crdbcontainerimage
              end
            end

            def kind_sym
              :crdb_cluster_status
            end
          end
        end
      end
    end
  end
end