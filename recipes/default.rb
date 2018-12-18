#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# install apache 
package "httpd" do
	action :install
end
# apache service is enabled to start on reboot 
service "httpd" do
	action [:enable, :start]
end
cookbook_file "/var/www/html/index.html" do 
	source "index.html"
	mode "0644"
end
