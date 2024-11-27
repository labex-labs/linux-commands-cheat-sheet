#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Change to the project directory
cd ~/project

# View system log entries using the uulog command
uulog -n 10
uulog -p err
uulog /var/log/syslog