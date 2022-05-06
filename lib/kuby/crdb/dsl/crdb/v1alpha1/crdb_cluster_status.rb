# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterStatus < ::KubeDSL::DSLObject
            value_field :cluster_status
            value_field :version
            array_field(:condition) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterStatusConditions.new }
            array_field(:operator_action) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterStatusOperatorActions.new }
            value_field :crdbcontainerimage

            validates :cluster_status, field: { format: :string }, presence: false
            validates :version, field: { format: :string }, presence: false
            validates :conditions, array: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterStatusConditions }, presence: false
            validates :operator_actions, array: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterStatusOperatorActions }, presence: false
            validates :crdbcontainerimage, field: { format: :string }, presence: false

            def serialize
              {}.tap do |result|
                result[:clusterStatus] = cluster_status
                result[:version] = version
                result[:conditions] = conditions.map(&:serialize)
                result[:operatorActions] = operator_actions.map(&:serialize)
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