#!/bin/bash
unblock_ip=$1
file="/etc/apache2/sites-available/admin.conf"
sudo sed -i '/Order allow,deny/a Allow from ' $unblock_ip $file
sudo systemctl restart apache2