#
# Cookbook Name:: workup-brentm5
# Recipe:: _setup_kitchen
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

settings = node['workup-brentm5']

kitchen_dir = "#{settings['home_dir']}/.kitchen"
directory kitchen_dir do
  action :create
  mode '0755'
end

cookbook_file "#{kitchen_dir}/config.yml" do
  action :create
  source 'kitchen/config.yml'
  mode '0644'
end
