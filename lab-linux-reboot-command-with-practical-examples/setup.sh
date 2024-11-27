#!/bin/bash

# Understand the reboot Command
echo "Exploring the reboot command..."
man reboot

# Reboot the System Immediately
echo "Rebooting the system immediately..."
sudo reboot

# Schedule a Reboot at a Specific Time
echo "Scheduling a reboot at a specific time..."
sudo shutdown -r +5 "System will reboot in 5 minutes."