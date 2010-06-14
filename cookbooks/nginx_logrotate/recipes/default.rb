#
# Cookbook Name:: nginx_logrotate
# Recipe:: default
#

remote_file "/etc/logrotate.d/nginx" do
    owner "root"
    group "root"
    mode 0755
    source "nginx.logrotate"
    backup false
    action :create
end
