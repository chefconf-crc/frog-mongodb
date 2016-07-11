#
# Cookbook Name:: .
# Recipe:: install_mongo
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'mongodb-org'

service 'mongod' do
  action [ :enable, :start ]
end
