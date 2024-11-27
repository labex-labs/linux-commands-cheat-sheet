#!/bin/bash

# Create the backup directory
mkdir -p ~/project/iptables_backup

# Save the current iptables rules to a file
sudo iptables-save > ~/project/iptables_backup/iptables-backup.rules

# Restore the iptables rules from the backup file
sudo iptables-restore < ~/project/iptables_backup/iptables-backup.rules