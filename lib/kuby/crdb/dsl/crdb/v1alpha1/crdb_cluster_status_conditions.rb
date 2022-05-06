# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterStatusConditions < ::KubeDSL::DSLObject
            value_field :status
            value_field :type
            value_field :last_transition_time

            validates :status, field: { format: :string }, presence: true
            validates :type, field: { format: :string }, presence: true
            validates :last_transition_time, field: { format: :string }, presence: true

            def serialize
              {}.tap do |result|
                result[:status] = status
                result[:type] = type
                result[:lastTransitionTime] = last_transition_time
              end
            end

            def kind_sym
              :crdb_cluster_status_conditions
            end
          end
        end
      end
    end
  end
end