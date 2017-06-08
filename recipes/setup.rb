yum_repository "epel"do
  mirrorlist "https://mirrors.fedoraproject.org/metalink?repo=epel-6&arch=$basearch"
  gpgkey "https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-6"
  action :create
end

package "tree"
package "cowsay"

file "/etc/motd" do
  content "Property of Adrian\n"
end
