#!/bin/bash

# Check if IPC objects exist
sudo ipcs | grep -E "^(-----|key)" > /dev/null
if [ $? -eq 0 ]; then
    echo "Existing IPC objects found:"
    sudo ipcs
fi

# Create directories
mkdir -p ~/project

# Set permissions
chmod -R 755 ~/project