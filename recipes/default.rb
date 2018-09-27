#
# Cookbook:: rabbitmq-cluster
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
include_recipe 'rabbitmq::default'
include_recipe 'rabbitmq::mgmt_console'
