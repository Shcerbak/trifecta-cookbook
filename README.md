# Description

This cookbook installs Trifecta UI in very basic manner.
Trifecta UI depends java 8

# Usage

Modify `default['trifecta']['version']` and `default['trifecta']['ui']['checksum']` to change Trifecta UI version.
Modify `default['trifecta']['cli']['install']` to install trifecta_cli
Modify `default['trifecta']['port']` if you want to change default trifecta ui port
Modify `default['trifecta']['java']['install']` if you haven't java installed, and select java 8
Change   'trifecta.zookeeper.host' => 'your_zookeeper_ip:2181', and   'trifecta.zookeeper.kafka.root.path' => '/kafka_path',


# Requirements

## Platform:

* debian

## Cookbooks:

* java

# Attributes

* `node['trifecta']['cli']['install']` -  Defaults to `false`.
* `node['trifecta']['cli']['checksum']` -  Defaults to `506d9e3908e7db445f5a2dcb10712367752cb7e5558f4cef5cb490afe49fdd1b`.
* `node['trifecta']['config']` -  Defaults to `{ ... }`.
* `node['trifecta']['version']` -  Defaults to `0.21.0`.
* `node['trifecta']['ui']['checksum']` -  Defaults to `fc47020066f34cfb3ee42e504835a8ea13e2890d932a1f26743b89ca338e262c`.
* `node['trifecta']['kafka_root_path']` -  Defaults to `/kafka`.
* `node['trifecta']['path']` -  Defaults to `/opt`.
* `node['trifecta']['home']` -  Defaults to `/root/.trifecta`.
* `node['trifecta']['port']` -  Defaults to `9000`.
* `node['trifecta']['java']['install']` -  Defaults to `false`.
* `node['trifecta']['packages']` -  Defaults to `%w(unzip)`.

# Recipes

* trifecta::cli
* trifecta::configure
* trifecta::default
* trifecta::install
* trifecta::packages
* trifecta::service

# License and Maintainer

Maintainer:: Shcerbak (<shcerbak@gmail.com>)
Source:: https://github.com/Shcerbak/trifecta-cookbook
Issues:: https://github.com/Shcerbak/trifecta-cookbook/issues

License:: apache 2
