#
# Cookbook Name:: riemann
# Recipe:: dash
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
=begin
#<
Installs `riemann-dash` with `config.rb` and `config.json`

TODO: 

  - add dynamic variables to the config files
#>
=end

include_recipe 'runit'

chef_gem 'riemann-dash' do
  compile_time false
  action :install
end

directory "#{node.riemann.dashboard.config_dir}" do
  owner node.riemann.user
  group node.riemann.group
  mode '0755'
  recursive true
  action :create
end

%w( config.rb config.json).each do |config_file|
  template "#{node.riemann.dashboard.config_dir}/#{config_file}" do
    source "#{config_file}.erb"
    owner node.riemann.user
    group node.riemann.group
    mode '0644'
    action :create_if_missing
  end
end

runit_service "riemann-dash" do
  default_logger true
end
