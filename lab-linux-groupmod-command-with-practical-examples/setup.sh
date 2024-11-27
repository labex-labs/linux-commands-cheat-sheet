#!/bin/bash

# Create a new group named "devops"
sudo groupadd devops

# Modify the group name from "devops" to "developers"
sudo groupmod -n developers devops

# Verify the group name change
getent group developers