#!/bin/bash
file="/etc/apache2/sites-available/admin.conf"
sudo sed -i '/Allow from /d' $file
sudo sed -i '/Deny from /d' $file
sudo systemctl restart apache2