#
# Cookbook Name:: mono
# Recipe:: install_ppa
# Author:: Guilhem Lettron <guilhem.lettron@youscribe.com>
#
# Copyright 2012, Societe Publica.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


apt_repository "mono-project" do
  uri "http://download.mono-project.com/repo/debian"
  distribution "wheezy"
  components ["main"]
  key "http://download.mono-project.com/repo/xamarin.gpg"
  only_if { ["lucid", "precise", "raring", "saucy", "trusty"].include?(node['lsb']['codename']) }
end

apt_repository "mono-compat" do
  uri "http://download.mono-project.com/repo/debian"
  distribution "wheezy-libtiff-compat"
  components ["main"]
  key "http://download.mono-project.com/repo/xamarin.gpg"
  only_if { ["precise"].include?(node['lsb']['codename']) }
end

apt_repository "mono-compat" do
  uri "http://download.mono-project.com/repo/debian"
  distribution "wheezy-apache24-compat"
  components ["main"]
  key "http://download.mono-project.com/repo/xamarin.gpg"
  only_if { ["saucy", "trusty"].include?(node['lsb']['codename']) }
end

include_recipe ['mono::install_packages']
