#!/bin/bash

# Create quota files
sudo quotacheck -cug /

# Enable quota in /etc/fstab
sudo sed -i '/\/dev\/sda1/s/$/ usrquota,grpquota/' /etc/fstab
sudo mount -o remount /

# Enable disk quota for user 'labex'
sudo edquota -u labex

# Set soft and hard limits for user 'labex'
# (You can customize the values as needed)
sudo quota -u labex -f / -s 1G -h 2G
sudo quota -u labex -f / -t -s 7d -h 14d