#!/bin/bash

# Create a new user account
sudo adduser newuser
sudo su - newuser
passwd
sudo chage -E 2023-12-31 newuser