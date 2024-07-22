#!/bin/bash

# Variables
REPO_DIR="/path/to/repo"
SERVICE_NAME="your_service"

# Pull latest code
cd $REPO_DIR
git pull origin main

# Restart the service
sudo systemctl restart $SERVICE_NAME

# Check if the service restart was successful
if [ $? -eq 0 ]; then
    echo "Service $SERVICE_NAME restarted successfully."
else
    echo "Failed to restart service $SERVICE_NAME."
    exit 1
fi
