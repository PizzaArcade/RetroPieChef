#
# Cookbook Name:: emulationstation
# Recipe:: default
#
# Copyright 2014, Robert Ely
#
# License: "CC BY-SA 4.0"
#

# add PizzaArcade repo

cookbook_file "/etc/apt/sources.list.d/pizzaarcade.list" do
  action :create
  owner "root"
  group "root"
  mode  "0655"
  source "etc/apt/sources.list.d/pizzaarcade.list"
  notifies :run, "execute[apt-get-update]", :immediately
end

execute "apt-get-update" do
  command "apt-get update"
  action :nothing
end

##
# es dependencies
##

package "libboost-system1.49.0"
package "libboost-filesystem1.49.0"
package "libboost-date-time1.49.0"
package "libboost-locale1.49.0"
package "libfreeimage3"
package "sdl2"

package "emulationstation"
