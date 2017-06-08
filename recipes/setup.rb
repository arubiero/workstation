#yum_repository "epel"do
#  baseurl 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-6&arch=$basearch'
#  action :create
#end

package "tree"
#package "cowsay"

file "/etc/motd" do
  content "Property of Adrian\n"
end
