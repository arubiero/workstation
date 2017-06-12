#yum_repository "epel" do
##  mirrorlist "https://mirrors.fedoraproject.org/metalink?repo=epel-6&arch=$basearch"
##  action :create
#  mirrorlist "https://mirrors.fedoraproject.org/metalink?repo=epel-6&arch=$basearch"
#  failovermethod "priority"
#  enabled true
#  gpgcheck true
#  gpgkey "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6"
#  gpgkey "https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-6"
#  action :add
#end

package "tree"

#package "cowsay"

#file "/etc/motd" do
#  content "Property of Adrian\nIPADDRESS :#{node['ipaddress']}\nHOSTNAME: #{node['hostname']}\nMEMORY: #{node['memory']['total']}\n"
#enda
template "/etc/motd" do 
source "motd.erb"
end
