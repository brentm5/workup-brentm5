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
    action :install
    not_if { File.exists?("/usr/local/Caskroom/#{package}") }
  end
end


include_recipe 'workup-brentm5::_setup_bin'
include_recipe 'workup-brentm5::_setup_asdf'
include_recipe 'workup-brentm5::_setup_kitchen'
