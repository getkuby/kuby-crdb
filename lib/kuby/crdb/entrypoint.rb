module Kuby::CRDB::Entrypoint
  def crdb_cluster_list(&block)
    ::Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbClusterList.new(&block)
  end

  def crdb_cluster(&block)
    ::Kuby::CRDB::DSL::CRDB::V1alpha1::CrdbCluster.new(&block)
  end
end
