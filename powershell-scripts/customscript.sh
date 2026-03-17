#!/bin/bash
sudo apt update
sudo apt install -y apache2

echo "<h1>Azure Multi-Tier Web Application</h1>" > /var/www/html/index.html
echo "<p>Server Hostname: $(hostname)</p>" >> /var/www/html/index.html

sudo systemctl restart apache2