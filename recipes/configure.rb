home = node['trifecta']['home']
directory home do
  owner 'root'
  group 'root'
  mode '0751'
  action :create
end

template "#{home}/config.properties" do
  source 'config.properties.erb'
  owner 'root'
  group 'root'
  mode '0644'

  variables config: node['trifecta']['config']
  notifies :restart, 'service[trifecta]', :delayed
end
