# typed: true

module Kuby
  module CRDB
    module DSL
      module CRDB
        module V1alpha1
          class CrdbClusterSpecIngressSql < ::KubeDSL::DSLObject
            array_field(:tl) { Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecIngressSqlTls.new }
            value_field :host
            key_value_field(:annotations, format: :string)
            value_field :ingress_class_name

            validates :tls, array: { kind_of: Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterSpecIngressSqlTls }, presence: false
            validates :host, field: { format: :string }, presence: true
            validates :annotations, kv: { value_format: :string }, presence: true
            validates :ingress_class_name, field: { format: :string }, presence: false

            def serialize
              {}.tap do |result|
                result[:tls] = tls.map(&:serialize)
                result[:host] = host
                result[:annotations] = annotations.serialize
                result[:ingressClassName] = ingress_class_name
              end
            end

            def kind_sym
              :crdb_cluster_spec_ingress_sql
            end
          end
        end
      end
    end
  end
end