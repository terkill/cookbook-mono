default['mono']['install_method'] = "packages"
default['mono']['repo'] = "git://github.com/mono/mono.git"
default['mono']['monolite-url'] = "http://storage.bos.xamarin.com/mono-dist-master/latest/monolite-111-latest.tar.gz"

case platform
when "debian","ubuntu"
  default['mono']['prefix']	=	"/usr/local"
  default['mono']['branch']	=	"mono-3.2.8"
end
