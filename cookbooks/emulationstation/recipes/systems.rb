#
# Cookbook Name:: emulationstation
# Recipe:: systems
#
# Copyright 2014, Robert Ely
#
# License: "CC BY-SA 4.0"
#

#Make sure rom path exists with the correct permissions.
directory "#{node[:emulationstation][:rom_path]}" do
  owner 'pi'
  group 'pi'
  mode '0755'
  action :create
  recursive true
end

system "nes" do
  fullname  "Nintendo Entertainment System"
  extension [".smc",".sfc", ".SMC", ".SFC"]
  command   "/usr/bin/nesemulator %ROM%"
  path      "#{node[:emulationstation][:rom_path]}/nes"
end

system "snes" do
  fullname  "Super Nintendo Entertainment System"
  extension [".smc",".sfc", ".SMC", ".SFC"]
  command   "/usr/bin/snesemulator %ROM%"
  path      "#{node[:emulationstation][:rom_path]}/snes"
end

system "genesis" do
  fullname  "Sega Genesis"
  extension [".smc",".sfc", ".SMC", ".SFC"]
  command   "/usr/bin/dgen %ROM%"
  path      "#{node[:emulationstation][:rom_path]}/genesis"
  pathalias "megadrive"
end
