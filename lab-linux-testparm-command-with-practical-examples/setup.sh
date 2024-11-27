#!/bin/bash

# Check testparm version
testparm --version

# Verify Samba configuration file syntax
cd ~/project
sudo nano smb.conf

cat << EOF > smb.conf
[global]
   workgroup = WORKGROUP
   server string = Samba Server %v
   netbios name = ubuntu
   security = user
   map to guest = bad user
   guest account = nobody

[homes]
   comment = Home Directories
   browsable = no
   writable = yes
EOF

sudo testparm
sudo testparm -v