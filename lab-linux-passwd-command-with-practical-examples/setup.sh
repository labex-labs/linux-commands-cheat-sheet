#!/bin/bash

# Understanding the passwd Command
passwd_status=$(sudo passwd -S labex)
echo "$passwd_status"
sudo passwd labex

# Changing User Password
sudo useradd -m newuser
sudo passwd newuser
su - newuser

# Resetting Forgotten Password
sudo useradd -m forgottenuser
sudo passwd -d forgottenuser
sudo passwd forgottenuser