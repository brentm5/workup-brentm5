#
# Cookbook Name:: workup-brentm5
# Recipe:: _setup_asdf
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

asdf = node['workup-brentm5']['asdf']

asdf.each do |plugin, val|
  val['versions'].each do |version|
    execute "install #{plugin} #{version}" do
      action :run
      command "asdf install #{plugin} #{version}"
      not_if "asdf list #{plugin} | grep -q #{version}"
      user node['workup']['username']
    end
  end
end
