require 'bundler'
require 'rspec/core/rake_task'
require 'rubygems/package_task'

require 'kuby/crdb'
require 'pry-byebug'

Bundler::GemHelper.install_tasks

task default: :spec

desc 'Run specs'
RSpec::Core::RakeTask.new do |t|
  t.pattern = './spec/**/*_spec.rb'
end

task generate: [:schemagen, :codegen]

task :schemagen do
  require 'base64'
  require 'json'
  require 'kind-rb'
  require 'net/http'
  require 'uri'
  require 'yaml'

  # delete first just in case
  system("#{KindRb.executable} delete cluster --name kuby-crdb")
  system("#{KindRb.executable} create cluster --name kuby-crdb")

  system("kubectl apply -f https://raw.githubusercontent.com/cockroachdb/cockroach-operator/v#{Kuby::CRDB::CRDB_OPERATOR_VERSION}/install/crds.yaml")

  cluster_name = 'kind-kuby-crdb'
  kubeconfig = YAML.load_file(File.join(Dir.home, '.kube', 'config'))
  cluster = kubeconfig['clusters'].find { |cluster| cluster['name'] == cluster_name }
  ca_cert_data = Base64.decode64(cluster.dig(*%w(cluster certificate-authority-data)))

  cert_store = OpenSSL::X509::Store.new
  cert_store.add_cert(OpenSSL::X509::Certificate.new(ca_cert_data))
  server = URI.parse(cluster.dig(*%w(cluster server)))

  http = Net::HTTP.new(server.host, server.port).tap do |http|
    http.use_ssl = true
    http.cert_store = cert_store
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER
  end

  token = nil
  STDOUT.write("Getting API token from cluster...")

  loop do
    secrets = JSON.parse(`kubectl --context #{cluster_name} get secrets -o json`)
    secret = secrets['items'].find do |secret|
      secret.dig(*%w(metadata annotations kubernetes.io/service-account.name)) == 'default'
    end

    if secret
      token = Base64.decode64(secret.dig(*%w(data token)))
      puts ' done'
      break
    else
      STDOUT.write('.')
      sleep 1
    end
  end

  get = Net::HTTP::Get.new('/openapi/v2')
  get['Authorization'] = "Bearer #{token}"

  crds = []
  schema = nil
  STDOUT.write("Requesting OpenAPI v2 schema from cluster...")

  loop do
    response = http.request(get)
    schema = JSON.parse(response.body)

    crds = schema['definitions'].each_with_object({}) do |(id, data), memo|
      memo[id] = data if id.start_with?('com.cockroachlabs')
    end

    if crds.empty?
      STDOUT.write('.')
      sleep 1
    else
      puts ' done'
      break
    end
  end

  FileUtils.rm_rf('vendor')
  FileUtils.mkdir('vendor')

  schema = schema.merge('definitions' => crds)
  File.write(File.join('vendor', 'open_api.json'), schema.to_json)

  puts 'Pulling openapi2jsonschema Docker image'
  system('docker pull garethr/openapi2jsonschema')

  puts 'Converting OpenAPI format to JSON schema format'
  system(<<~END)
    docker run --rm \
      -v #{File.expand_path('vendor')}:/usr/local/scratch \
      garethr/openapi2jsonschema \
      --kubernetes --output /usr/local/scratch/json_schema /usr/local/scratch/open_api.json
  END

  puts "Cleaning up"
  system("#{KindRb.executable} delete cluster --name kuby-crdb")
end

task :codegen do
  require 'dry/inflector'
  require 'fileutils'

  # delete anything that should be re-generated
  FileUtils.rm_rf('./lib/kuby/crdb/dsl.rb')
  FileUtils.rm_rf('./lib/kuby/crdb/dsl')
  FileUtils.mkdir_p('./lib/kuby/crdb/dsl')

  local_json_schema_path = 'vendor/json_schema'

  generator = KubeDSL::Generator.new(
    schema_dir: local_json_schema_path,
    output_dir: File.join('lib'),
    autoload_prefix: File.join('kuby', 'crdb', 'dsl'),
    dsl_namespace: ['Kuby', 'CRDB', 'DSL'],
    entrypoint_namespace: ['Kuby', 'CRDB'],
    inflector: Dry::Inflector.new do |inflections|
      inflections.acronym('DSL')
      inflections.acronym('CRDB')
    end
  )

  generator.builder.register_resolver('io.k8s') do |ref_str, builder|
    external_ref = ::KubeDSL::ExternalRef.new(
      ref_str,
      ['KubeDSL', 'DSL'],
      builder.inflector,
      builder.schema_dir,
      builder.autoload_prefix
    )

    ns = external_ref.ruby_namespace + [external_ref.kind]
    exists = ns.inject(Object) { |mod, n| mod.const_get(n, false) } rescue false
    exists ? external_ref : builder.parse_ref(ref_str)
  end

  generator.generate_resource_files
  generator.generate_autoload_files

  FileUtils.rm_rf(File.join('lib', 'kuby.rb'))
end
