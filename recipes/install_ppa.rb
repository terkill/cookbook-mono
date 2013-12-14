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


if ["lucid", "precise", "raring", "saucy"].include?(node['lsb']['codename'])
  apt_repository "mono-3-ppa" do
    uri "http://ppa.launchpad.net/v-kukol/mono-testing/ubuntu"
    distribution node['lsb']['codename']
    components ["main"]
    keyserver "keyserver.ubuntu.com"
    key "0ADB8C6C"
  end
end

include_recipe ['mono::install_packages']
