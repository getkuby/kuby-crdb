module Kuby::CRDB::Entrypoint
  def crdb_cluster_list(&block)
    ::Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterList.new do
      api_version 'crdb.cockroachlabs.com/v1alpha1'
      instance_eval(&block)
    end
  end

  def crdb_cluster(&block)
    ::Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbCluster.new do
      api_version 'crdb.cockroachlabs.com/v1alpha1'
      instance_eval(&block)
    end
  end
end
