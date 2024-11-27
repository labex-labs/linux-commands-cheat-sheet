#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Change to the project directory
cd ~/project

# Configure the history command
cat << EOF >> ~/.bashrc
# Increase the history size
export HISTFILESIZE=10000
export HISTSIZE=10000

# Ignore duplicate commands in the history
export HISTCONTROL=ignoredups:erasedups

# Timestamp the history
export HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S "
EOF

# Source the updated .bashrc file
source ~/.bashrc

# Verify the history command configuration
history -n