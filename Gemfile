source 'https://rubygems.org'

gemspec

group :development do
  gem 'dry-inflector'
end

group :development, :test do
  gem 'kube-dsl', path: '../kube-dsl'
  gem 'kuby-core', path: '../kuby-core'
  gem 'kuby-kind'
  gem 'pry-byebug'
  gem 'rake'

  gem 'sorbet'
  gem 'sorbet-runtime'
  gem 'tapioca', '~> 0.7'
  gem 'parlour', github: 'camertron/parlour', branch: 'initialize_void'
end

group :test do
  gem 'rspec', '~> 3.0'
end
