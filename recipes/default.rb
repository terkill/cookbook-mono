#
# Cookbook Name:: mono
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

case node[:platform]
when "opensuse"
  package "mono-stable"
when "debian", "ubuntu"
  package "mono-complete"
end
