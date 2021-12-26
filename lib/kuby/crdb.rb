require 'kube-dsl'

module Kuby
  module CRDB
    autoload :DSL,        'kuby/crdb/dsl'
    autoload :Entrypoint, 'kuby/crdb/entrypoint'
    autoload :Plugin,     'kuby/crdb/plugin'

    extend Entrypoint
  end
end

Kuby.register_plugin(:crdb, ::Kuby::CRDB::Plugin)
