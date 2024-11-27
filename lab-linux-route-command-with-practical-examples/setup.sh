#!/bin/bash

# Create a directory for the lab
mkdir -p ~/project/networking-lab
cd ~/project/networking-lab

# Configure static routes using the route command
sudo route add -net 192.168.1.0 netmask 255.255.255.0 gw 10.0.0.1
sudo route show