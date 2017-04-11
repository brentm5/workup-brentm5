#
# Cookbook Name:: workup-brentm5
# Recipe:: _setup_rbenv
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

settings = node['workup-brentm5']

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
