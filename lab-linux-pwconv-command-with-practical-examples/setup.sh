#!/bin/bash

# Convert /etc/passwd to /etc/shadow
sudo pwconv

# Create a new user
sudo useradd -m -s /bin/bash newuser
echo "newuser:newpassword" | sudo chpasswd

# Verify the changes
sudo cat /etc/passwd | head -n 3
sudo cat /etc/shadow | head -n 3