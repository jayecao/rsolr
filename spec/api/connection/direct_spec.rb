if jruby?
  
  describe RSolr::Connection::Direct do
    
    it 'should accept an options hash' do
      
      solr = RSolr::Connection::Direct.new(:dist_dir=>solr_dist_dir, :home_dir=>solr_home_dir)
      r = solr.request '/select', :q=>'*:*'
      r.should be_a Hash
      
    end
    
    it 'should accept a SolrCore' do
      
      core = new_solr_core solr_home_dir, solr_data_dir
      rsolr = RSolr::Connection::Direct.new(core)
      r = rsolr.request '/select', :q=>'*:*'
      r.should be_a Hash
      
    end
  
  end
  
end