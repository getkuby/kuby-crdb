$:.unshift File.join(File.dirname(__FILE__), 'lib')
require 'kuby/crdb/version'

Gem::Specification.new do |s|
  s.name     = 'kuby-crdb'
  s.version  = ::Kuby::CRDB::VERSION
  s.authors  = ['Cameron Dutro']
  s.email    = ['camertron@gmail.com']
  s.homepage = 'http://github.com/getkuby/kuby-crdb'

  s.description = s.summary = 'CockroachDB plugin for Kuby.'

  s.platform = Gem::Platform::RUBY

  s.add_dependency 'kube-dsl', '>= 0.6.1', '< 1.0'

  s.require_path = 'lib'
  s.files = Dir['{lib,spec}/**/*', 'Gemfile', 'LICENSE', 'CHANGELOG.md', 'README.md', 'Rakefile', 'kuby-crdb.gemspec']
end
