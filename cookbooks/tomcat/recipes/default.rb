#
# Cookbook:: tomcat
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'tomcat' do
	action :install
end

service 'tomcat' do
	action :start
end

directory '/root/tomcat_log' do
	action :create
end

file '/root/tomcat_log/tomcat.log' do
	action :create
	content 'TOMCAT IS INSTALLED SUCCESSFULLY
						'
end


