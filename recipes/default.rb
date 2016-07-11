#
# Cookbook Name:: frog-mongodb
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'frog-mongodb::yumconfig'
include_recipe 'frog-mongodb::install_mongo'
