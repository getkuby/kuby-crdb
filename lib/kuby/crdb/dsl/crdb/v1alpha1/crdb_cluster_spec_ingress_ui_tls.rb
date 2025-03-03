# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecIngressUiTls < ::KubeDSL::DSLObject
            value_field :hosts
            value_field :secret_name

            validates :hosts, field: { format: :string }, presence: false
            validates :secret_name, field: { format: :string }, presence: false

            def serialize
              {}.tap do |result|
                result[:hosts] = hosts
                result[:secretName] = secret_name
              end
            end

            def kind_sym
              :crdb_cluster_spec_ingress_ui_tls
            end
          end
        end
      end
    end
  end
end