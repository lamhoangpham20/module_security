#!/bin/bash
unblock_ip="87.92.98.47"
file="/etc/apache2/sites-available/admin.conf"
sudo sed -i 's/Order allow,deny/Order deny,allow/g' $file
sudo sed -i 's/Allow from all/Deny from all/g' $file
sudo sed -i '/Order allow,deny/a Allow from ' $unblock_ip $file
sudo systemctl restart apache2