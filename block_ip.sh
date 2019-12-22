#!/bin/bash
block_ip="87.92.98.47"
file="/etc/apache2/sites-available/admin.conf"
sudo sed -i 's/Order deny,allow/Order allow,deny/g' $file
sudo sed -i 's/Deny from all/Allow from all/g' $file
sudo sed -i '/Order allow,deny/a Deny from '  $block_ip $file
sudo systemctl restart apache2