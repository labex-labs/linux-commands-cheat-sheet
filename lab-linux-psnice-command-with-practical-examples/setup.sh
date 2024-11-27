#!/bin/bash

# Check if the current user is 'labex'
if [ "$(whoami)" != "labex" ]; then
    echo "This script must be run as the 'labex' user."
    exit 1
fi

# Check if the 'project' directory exists
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Change to the 'project' directory
cd ~/project

# Check if the 'psnice' command is available
if ! command -v psnice &> /dev/null; then
    echo "The 'psnice' command is not available. Skipping this step."
else
    # Check the current priority of the bash process
    ps -o pid,ni,cmd -p $(pgrep -n bash)

    # Increase the priority of the current bash process
    sudo psnice -n -5 -p $(pgrep -n bash)

    # Verify the change
    ps -o pid,ni,cmd -p $(pgrep -n bash)

    # Start a new sleep process
    sleep 1000 &

    # Check the priority of the sleep process
    ps -o pid,ni,cmd -p $(pgrep -n sleep)

    # Decrease the priority of the sleep process
    sudo psnice -n 5 -p $(pgrep -n sleep)

    # Verify the change
    ps -o pid,ni,cmd -p $(pgrep -n sleep)
fi