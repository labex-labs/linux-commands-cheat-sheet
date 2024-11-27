#!/bin/bash

# Check if Samba is installed
if ! dpkg-query -W -f='${Status}' samba 2>/dev/null | grep -q "ok installed"; then
    sudo apt-get update
    sudo apt-get install -y samba
fi

# Check if the Samba configuration file exists
if [ ! -f /etc/samba/smb.conf ]; then
    sudo touch /etc/samba/smb.conf
fi

# Configure the Samba server
sudo tee -a /etc/samba/smb.conf << EOF
[global]
   workgroup = WORKGROUP
EOF

# Start the Samba service
sudo systemctl start smbd

# Check the Samba service status
sudo systemctl status smbd