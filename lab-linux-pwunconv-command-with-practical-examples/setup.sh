#!/bin/bash

# Check the current state of the user password storage
sudo cat /etc/shadow

# Move the passwords from the /etc/shadow file to the /etc/passwd file
sudo pwunconv

# Verify the changes
sudo cat /etc/passwd

# Secure the user passwords by disabling the shadow password system
sudo pwconv