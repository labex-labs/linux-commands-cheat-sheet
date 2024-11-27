#!/bin/bash

# Check if aplaymidi is installed
if ! command -v aplaymidi &> /dev/null
then
    sudo apt-get update
    sudo apt-get install -y alsa-utils
fi

# Create the project directory if it doesn't exist
mkdir -p ~/project

# Check if the example MIDI file exists
if [ ! -f ~/project/example.mid ]
then
    touch ~/project/example.mid
fi

# List available MIDI devices
aplaymidi -l

# Play the example MIDI file
aplaymidi -p 20:0 ~/project/example.mid