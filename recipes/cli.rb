version = node['trifecta']['version']
prefix = "https://github.com/ldaniels528/trifecta/releases/download/v#{version}"
path = node['trifecta']['path']

remote_file "#{path}/trifecta_ui-#{version}/trifecta_cli_#{version}.bin.jar" do
  owner 'root'
  group 'root'
  mode '0644'
  source "#{prefix}/trifecta_cli_#{version}.bin.jar"
  checksum node['trifecta']['cli']['checksum']

  only_if { File.directory?("#{path}/trifecta_ui-#{version}") }
end
