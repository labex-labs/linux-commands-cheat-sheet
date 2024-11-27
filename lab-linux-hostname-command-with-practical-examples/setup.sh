#!/bin/bash

# Change the hostname temporarily
sudo hostname new-hostname

# Change the hostname permanently
sudo echo "new-hostname" | sudo tee /etc/hostname
sudo systemctl restart systemd-hostnamed

# Verify the new hostname
echo "Current hostname: $(hostname)"
echo "FQDN: $(hostname -f)"
echo "IP address: $(hostname -I)"