node['trifecta']['packages'].each do |pkg|
  package pkg do
    action :install
  end
end
