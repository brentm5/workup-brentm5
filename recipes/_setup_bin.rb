#
# Cookbook Name:: workup-brentm5
# Recipe:: _setup_binaries
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

settings = node['workup-brentm5']

bin_dir = "#{settings['home_dir']}/.bin"
directory bin_dir do
  action :create
  mode '0755'
end

settings['binaries'].each do |file, value|
  remote_file "#{bin_dir}/#{file}" do
    action :create
    source value['url']
    checksum value['checksum'] if value['checksum']
  end
end

settings['scripts'].each do |file|
  cookbook_file "#{bin_dir}/#{file}" do
    action :create
    source "scripts/#{file}"
  end
end
