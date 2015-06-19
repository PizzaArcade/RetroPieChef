#!/bin/bash
sudo apt-get install git-core chef
sudo rm -rf /var/chef/RetroPieChef/
sudo git clone https://github.com/PizzaArcade/RetroPieChef.git /var/chef/RetroPieChef

sudo cat <<"EOF" > /etc/chef/solo.rb
node_name        "retro-pie"
cookbook_path    "/var/chef/RetroPieChef/cookbooks"
role_path        "/var/chef/RetroPieChef/roles"
checksum_path    "/var/chef/checksums"
file_backup_path "/var/chef/backup"
file_cache_path  "/var/chef/cache"
lockfile nil
log_level :info
log_location STDOUT
solo true
EOF

sudo chef-solo -j https://raw.githubusercontent.com/PizzaArcade/RetroPieChef/master/retropi.json
