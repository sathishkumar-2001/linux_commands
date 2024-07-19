#!/bin/bash

# Update the package list
sudo apt-get update

# Upgrade all the packages
sudo apt-get upgrade -y

# Clean up unnecessary packages and files
sudo apt-get autoremove -y
sudo apt-get autoclean

# Check for errors
if [ $? -eq 0 ]; then
    echo "System update and cleanup successful."
else
    echo "System update and cleanup failed."
    exit 1
fi
