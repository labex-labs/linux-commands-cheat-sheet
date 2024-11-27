#!/bin/bash

# Set the password expiration date for the labex user
sudo chage -E $(date -d "+30 days" '+%Y-%m-%d') labex