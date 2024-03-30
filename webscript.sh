echo

# Creating temp directory
echo "#################################"
echo "Starting artifact deployement"
echo "#################################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

wget https://www.tooplate.com/zip-templates/2098_health.zip
unzip 2098_health.zip > /dev/null
sudo cp -r 2098_health/* /var/www/html/

# Bounce service
echo "################################"
echo "Restarting HTTPD service"
echo "################################"
systemctl restart httpd
echo

# Cleanup
echo "###############################"
echo "Removing temporary files"
echo "###############################"
rm -rf /tmp/webfiles
echo

sudo systemctl status httpd
ls /var/www/html/