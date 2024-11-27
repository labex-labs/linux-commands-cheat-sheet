#!/bin/bash

# Check if script command is installed
if ! command -v script &> /dev/null
then
    sudo apt-get update
    sudo apt-get install -y script
fi

# Create recording directory
mkdir -p ~/project/recording
cd ~/project/recording

# Record terminal session
script recording.log