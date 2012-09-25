#
# Cookbook Name:: mono
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
if node['lsb']['codename'] == "lucid" 
	apt_repository "badgerport" do
		uri "http://badgerports.org"
		distribution node['lsb']['codename']
		components ["main"]
		key "http://badgerports.org/directhex.ppa.asc"
	end
end

include_recipe "mono::default"
