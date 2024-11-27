#!/bin/bash

# Check if amixer is installed
if ! command -v amixer &> /dev/null
then
    sudo apt-get update
    sudo apt-get install -y alsa-utils
fi

# Check master volume level
amixer get Master

# Set master volume to 50%
amixer set Master 50%