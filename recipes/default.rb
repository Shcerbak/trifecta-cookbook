include_recipe 'java' if node['trifecta']['java']['install']
include_recipe 'trifecta::packages'
include_recipe 'trifecta::install'
include_recipe 'trifecta::cli' if node['trifecta']['cli']['install']
include_recipe 'trifecta::configure'
include_recipe 'trifecta::service'
