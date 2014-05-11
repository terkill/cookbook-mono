default['mono']['install_method'] = "packages"
default['mono']['repo'] = "git://github.com/mono/mono.git"

case platform
when "debian","ubuntu"
  default['mono']['prefix']	=	"/usr/local"
  default['mono']['branch']	=	"mono-3.2.8"
end
