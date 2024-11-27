#!/bin/bash

# Check emerge version
sudo emerge --version

# Update package database
sudo emerge --sync

# Update and upgrade packages
sudo emerge --update --deep --newuse @world