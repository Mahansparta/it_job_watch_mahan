#
# Cookbook:: it_jobs_watch_cookbook
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#
apt_update 'update_sources' do
  action :update
end

package 'python3-pip'


remote_directory '/home/vagrant/app' do
  source 'app'
  action :create
end

bash 'install_requirements' do
  code <<-EOH
    sudo pip3 install -r /home/vagrant/app/requirements.txt
  EOH
end


directory '/home/vagrant/Downloads' do
  owner 'root'
  group 'root'
  action :create
  mode '0777'
end
