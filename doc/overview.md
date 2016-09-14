This cookbook installs Trifecta UI in very basic manner.
Trifecta UI depends java 8

# Usage

Modify `default['trifecta']['version']` and `default['trifecta']['ui']['checksum']` to change Trifecta UI version.
Modify `default['trifecta']['cli']['install']` to install trifecta_cli
Modify `default['trifecta']['port']` if you want to change default trifecta ui port
Modify `default['trifecta']['java']['install']` if you haven't java installed, and select java 8
Change   'trifecta.zookeeper.host' => 'your_zookeeper_ip:2181', and   'trifecta.zookeeper.kafka.root.path' => '/kafka_path',

