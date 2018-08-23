#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'docker' do 
	action :install
end

service 'docker' do 
	action [ :start, :enable ]
end

user 'admin' do
  comment 'admin user'
  home '/home/admin'
  shell '/bin/bash'
end


