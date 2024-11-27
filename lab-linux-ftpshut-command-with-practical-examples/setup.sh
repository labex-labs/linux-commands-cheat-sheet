#!/bin/bash

# Check if vsftpd is running
if systemctl is-active --quiet vsftpd; then
    # Shut down the FTP server
    sudo ftpshut now "Scheduled FTP server maintenance"
    echo "FTP server has been shut down."
else
    echo "FTP server is not running."
fi