#!/bin/bash

# Check if tmux is installed
if ! command -v tmux &> /dev/null
then
    echo "Installing tmux..."
    sudo apt-get update
    sudo apt-get install -y tmux
fi

# Create a new tmux session
tmux new-session -d -s project

# Detach from the session
tmux detach

# List all running tmux sessions
tmux ls