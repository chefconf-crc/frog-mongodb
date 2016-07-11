property :instance_name, String, name_property: true

action :create do
  file '/tmp/myass' do
    action :create
  end

  yum_repository 'mongodb-org-3.2' do
    description 'MongoDB Repository'
    baseurl 'https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.2/x86_64/'
    gpgcheck true
    gpgkey 'https://www.mongodb.org/static/pgp/server-3.2.asc'
    enabled true
    action :create
  end

  package 'mongodb-org'

  service 'mongod' do
    action :enable
  end
end

action :start do
  service 'mongod' do
    action :start
  end
end
