#!/bin/bash

# Create a new volume label
sudo mlabel -c "My Data Volume" /dev/sdb1

# Verify the current volume label
sudo mlabel -s /dev/sdb1

# Change the existing volume label
sudo mlabel -c "Updated Data Volume" /dev/sdb1

# Verify the updated volume label
sudo mlabel -s /dev/sdb1

# Remove the volume label
sudo mlabel -r /dev/sdb1

# Verify the volume label has been removed
sudo mlabel -s /dev/sdb1