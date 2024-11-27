#!/bin/bash

# Update package index
sudo apt-get update

# Install ftpcount
sudo apt-get install -y ftpcount

# Install vsftpd
sudo apt-get install -y vsftpd
sudo systemctl start vsftpd