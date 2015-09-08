#
# Cookbook Name:: mean-dev-vm
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe 'apt'

include_recipe 'git'

include_recipe 'nodejs'

include_recipe 'vim'

# install mean-cli
nodejs_npm 'mean-cli' do
  version '0.10.14'
end
