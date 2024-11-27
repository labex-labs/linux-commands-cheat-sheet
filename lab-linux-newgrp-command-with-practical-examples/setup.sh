#!/bin/bash

# Check the current user's primary group
current_group=$(id -gn)
echo "Current primary group: $current_group"

# Create a new group
sudo groupadd project-team

# Switch to the new group
sudo newgrp project-team

# Verify the group change
new_group=$(id -gn)
echo "New primary group: $new_group"