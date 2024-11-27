#!/bin/bash

# Install tftp server
sudo apt-get update
sudo apt-get install -y tftpd-hpa

# Create tftp root directory
sudo mkdir -p /tftpboot
sudo chmod -R 777 /tftpboot

# Configure tftp server
sudo sed -i 's/TFTP_USERNAME="tftp"/TFTP_USERNAME="labex"/' /etc/default/tftpd-hpa
sudo sed -i 's/TFTP_DIRECTORY="\/var\/lib\/tftpboot"/TFTP_DIRECTORY="\/tftpboot"/' /etc/default/tftpd-hpa
sudo systemctl restart tftpd-hpa