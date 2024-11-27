#!/bin/bash

# Create a new user account
sudo useradd -m testuser

# Delete the user account and remove the home directory
sudo userdel -r testuser