#!/bin/bash

# Create new user account
sudo useradd -m -s /bin/bash newuser
sudo passwd newuser

# Verify user accounts
sudo cat /etc/passwd