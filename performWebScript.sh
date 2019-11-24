#! /bin/bash

echo "


       ********************************************
       *  WEB CONFIGURATION BY TRIDEV SCRIPT      *
       *                                          *
       ********************************************
"


yum install -y httpd #install httpd

echo ""

echo "Enter IP of virtual Machine"
read ip
echo ""
sed -i 's|#Listen 12.34.56.78:80|Listen '$ip':80|g' /etc/httpd/conf/httpd.conf #search and replace line

sed -i 's|Listen 80|#Listen 80|g' /etc/httpd/conf/httpd.conf

echo "IP Configuration done in /etc/httpd/conf/httpd.conf"
echo ""

chmod 777 /var/www/html

wget "www.bing.com" -O /var/www/html/index.html

echo "index.html added to /var/www/html/"
echo ""

service httpd start

echo "


       ********************************************
       *  WEB CONFIGURATION DONE	          *
       *                                          *
       ********************************************
"

