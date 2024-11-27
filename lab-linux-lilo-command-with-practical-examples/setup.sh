#!/bin/bash

# Check lilo version
sudo lilo -V

# Backup lilo configuration
sudo cp /etc/lilo.conf /etc/lilo.conf.bak

# Edit lilo configuration
sudo nano /etc/lilo.conf

# Update lilo boot sectors
sudo lilo