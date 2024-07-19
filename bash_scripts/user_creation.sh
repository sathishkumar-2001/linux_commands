#!/bin/bash

# Function to display usage
usage() {
    echo "Usage: $0 -u username -p password -g group"
    exit 1
}

# Check for required arguments
while getopts "u:p:g:" opt; do
  case $opt in
    u) NEW_USER=$OPTARG ;;
    p) PASSWORD=$OPTARG ;;
    g) GROUP=$OPTARG ;;
    *) usage ;;
  esac
done

# Ensure all arguments are provided
if [ -z "$NEW_USER" ] || [ -z "$PASSWORD" ] || [ -z "$GROUP" ]; then
    usage
fi

# Create a new user
sudo useradd -m -s /bin/bash $NEW_USER

# Set the user's password
echo "$NEW_USER:$PASSWORD" | sudo chpasswd

# Add the user to a group
sudo usermod -aG $GROUP $NEW_USER

# Verify user creation
if id "$NEW_USER" &>/dev/null; then
    echo "User $NEW_USER created and added to $GROUP group."
else
    echo "Failed to create user $NEW_USER."
    exit 1
fi
