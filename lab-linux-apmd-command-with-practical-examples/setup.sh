#!/bin/bash

# Check if apmd is installed
if ! dpkg -s apmd &> /dev/null; then
  sudo apt-get update
  sudo apt-get install -y apmd
fi

# Start the apmd service
sudo /etc/init.d/apmd start

# Monitor battery status
sudo apmd -s
sudo apmd -d