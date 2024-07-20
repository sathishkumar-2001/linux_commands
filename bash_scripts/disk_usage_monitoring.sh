#!/bin/bash

# Variables
THRESHOLD=80
EMAIL="admin@example.com"

# Check disk usage
DISK_USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

# Send alert if threshold is exceeded
if [ $DISK_USAGE -gt $THRESHOLD ]; then
    echo "Disk usage is at $DISK_USAGE%. Sending email alert to $EMAIL."
    echo "Disk usage on server is at $DISK_USAGE%" | mail -s "Disk Usage Alert" $EMAIL
else
    echo "Disk usage is at $DISK_USAGE%. No alert necessary."
fi
