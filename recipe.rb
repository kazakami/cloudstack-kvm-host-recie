execute "Disable SELinux" do
  user "root"
  command "setenforce 0; sed -i 's/SELINUX=enforcing/SELINUX=permissive/g' /etc/selinux/config"
end

package 'ntp' do
  action :install
end

service 'ntpd' do
  action [:enable, :start]
end

remote_file "/etc/yum.repos.d/cloudstack.repo" do
  action :create
  source "cloudstack.repo"
end

package 'cloudstack-agent' do
  action :install
end

remote_file "/etc/libvirt/qemu.conf" do
  action :create
  source "qemu.conf"
end

remote_file "/etc/libvirt/libvirtd.conf" do
  action :create
  source "libvirtd.conf"
end

remote_file "/etc/sysconfig/libvirtd" do
  action :create
  source "libvirtd"
end

service "libvirtd" do
  action :restart
end

