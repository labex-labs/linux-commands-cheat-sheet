#!/bin/bash

# Create the "developers" group
sudo groupadd developers

# Modify the labex user account
sudo usermod -c "John Doe" -s /bin/zsh labex
sudo usermod -d /home/newuser labex
sudo usermod -g developers labex
sudo usermod -L labex