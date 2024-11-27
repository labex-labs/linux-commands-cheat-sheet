#!/bin/bash

# Check if /etc/aliases file exists
if [ -f "/etc/aliases" ]; then
    echo "File /etc/aliases already exists"
else
    sudo touch /etc/aliases
    echo "Created /etc/aliases file"
fi

# Add email aliases to /etc/aliases
sudo tee -a /etc/aliases << EOF
support: labex
info: labex
EOF

# Rebuild the aliases database
sudo newaliases