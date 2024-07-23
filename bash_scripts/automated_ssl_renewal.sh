#!/bin/bash

# Renew the certificate
sudo certbot renew

# Restart the web server
sudo systemctl restart apache2

# Check if the renewal and restart were successful
if [ $? -eq 0 ]; then
    echo "SSL certificate renewed and web server restarted successfully."
else
    echo "SSL certificate renewal or web server restart failed."
    exit 1
fi
