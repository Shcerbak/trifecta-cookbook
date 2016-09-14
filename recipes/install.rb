trifecta_zip = ::File.join(Chef::Config[:file_cache_path], 'trifecta.zip')
version = node['trifecta']['version']
prefix = "https://github.com/ldaniels528/trifecta/releases/download/v#{version}"
path = node['trifecta']['path']

remote_file trifecta_zip do
  owner 'root'
  group 'root'
  mode '0644'
  source "#{prefix}/trifecta_ui-#{version}.zip"
  checksum node['trifecta']['ui']['checksum']

  notifies :run, 'execute[unzip]', :immediately
end

execute 'unzip' do
  command "unzip #{trifecta_zip} -d #{path}"

  not_if { File.directory?("#{path}/trifecta_ui-#{version}") }
end

link "#{path}/trifecta" do
  to "#{path}/trifecta_ui-#{version}"
end
