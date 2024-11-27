#!/bin/bash

# Set the time zone to America/New_York
sudo timedatectl set-timezone America/New_York

# Check the current system date and time
timedatectl

# Set the system date and time to 2023-04-13 12:00:00
sudo timedatectl set-time "2023-04-13 12:00:00"

# Check the updated system date and time
timedatectl