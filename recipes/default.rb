#
# Cookbook Name:: workup-brentm5
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

include_recipe 'homebrew'

settings = node['workup-brentm5']

settings['brew_taps'].each do |tap|
  homebrew_tap tap do
    action :tap
  end
end

settings['brew_packages'].each do |package|
  homebrew_package package do
    action :install
  end
end

settings['cask_packages'].each do |package|
  homebrew_cask package do
    action :cask
    not_if { File.exists?("/usr/local/Caskroom/#{package}") }
  end
end

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

settings['rbenv']['versions'].each do |version|
  execute "install ruby #{version}" do
    action :run
    command "rbenv install -f #{version}"
    not_if "rbenv versions | grep -q #{version}"
  end
end

file "#{settings['home_dir']}/.rbenv/version" do
  action :create
  content "#{settings['rbenv']['global']}\n"
  mode 0644
end
