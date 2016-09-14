template '/etc/init.d/trifecta' do
  source 'trifecta.erb'
  owner 'root'
  group 'root'
  mode '0751'
end

service 'trifecta' do
  supports :restart => true
  action [:enable, :start]
end
