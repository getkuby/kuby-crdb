module Kuby::CRDB::DSL::CRDB::V1alpha1
  class Status < ::KubeDSL::DSLObject
    value_field :cluster_status
    value_field :version
    value_field :conditions
    value_field :operator_actions
    value_field :crdbcontainerimage

    validates :cluster_status, field: { format: :string }, presence: false
    validates :version, field: { format: :string }, presence: false
    validates :conditions, field: { format: :string }, presence: false
    validates :operator_actions, field: { format: :string }, presence: false
    validates :crdbcontainerimage, field: { format: :string }, presence: false

    def serialize
      {}.tap do |result|
        result[:clusterStatus] = cluster_status
        result[:version] = version
        result[:conditions] = conditions
        result[:operatorActions] = operator_actions
        result[:crdbcontainerimage] = crdbcontainerimage
      end
    end

    def kind_sym
      :status
    end
  end
end
