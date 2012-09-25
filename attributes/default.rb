case platform
when "debian","ubuntu"
	default[:mono][:prefix]	=	"/urs/local"
	default[:mono][:branch]	=	"master"
end
