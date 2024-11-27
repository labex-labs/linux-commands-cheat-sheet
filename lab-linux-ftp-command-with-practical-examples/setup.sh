#!/bin/bash

# Create the necessary directories
mkdir -p ~/project/ftp

# Install FTP server (vsftpd)
sudo apt-get update
sudo apt-get install -y vsftpd

# Configure FTP server
sudo tee /etc/vsftpd.conf > /dev/null <<EOF
listen=YES
anonymous_enable=YES
local_enable=NO
write_enable=NO
anon_upload_enable=NO
anon_mkdir_write_enable=NO
anon_other_write_enable=NO
EOF

# Start FTP server
sudo systemctl start vsftpd
sudo systemctl enable vsftpd

# Set permissions
sudo chown -R labex:labex ~/project/ftp