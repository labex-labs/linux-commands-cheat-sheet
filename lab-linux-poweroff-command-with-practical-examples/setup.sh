#!/bin/bash

# Create a Cron job to automatically shut down the system at 6:00 PM
echo "0 18 * * * sudo poweroff" | sudo tee /etc/cron.d/auto-shutdown

# Ensure the poweroff command is available
sudo apt-get update
sudo apt-get install -y cron