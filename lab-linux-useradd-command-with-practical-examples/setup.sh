#!/bin/bash

# Create a new user account
sudo useradd -m newuser
id newuser
su - newuser
exit

# Assign a password to the new user
sudo passwd newuser