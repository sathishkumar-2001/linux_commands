#!/bin/bash

# Variables
REMOTE_USER="remoteuser"
REMOTE_HOST="remote.host.com" 
REMOTE_DIR="/path/to/remote/dir"
LOCAL_DIR="/path/to/local/dir"

# Upload files
sftp $REMOTE_USER@$REMOTE_HOST <<EOF
cd $REMOTE_DIR
mput $LOCAL_DIR/*
bye
EOF

# Check if the upload was successful
if [ $? -eq 0 ]; then
    echo "Files uploaded successfully."
else
    echo "File upload failed."
    exit 1
fi
