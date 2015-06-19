#!/bin/bash
sudo apt-get install git-core chef
sudo rm -rf /var/chef/RetroPieChef/
sudo git clone https://github.com/PizzaArcade/RetroPieChef.git /var/chef/RetroPieChef
sudo wget -O /etc/chef/solo.rb https://raw.githubusercontent.com/PizzaArcade/RetroPieChef/master/solo.rb
sudo chef-solo -j https://raw.githubusercontent.com/PizzaArcade/RetroPieChef/master/retropi.json
