#
# Cookbook Name:: workup-brentm5
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

directory "#{DIR.home}/.bin" do
  action :create
  mode '0755'
end
