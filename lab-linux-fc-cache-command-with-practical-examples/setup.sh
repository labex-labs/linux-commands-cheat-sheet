#!/bin/bash

# Check if the font directory exists, if not, create it
if [ ! -d "/usr/share/fonts" ]; then
    sudo mkdir -p /usr/share/fonts
fi

# Copy the custom font to the font directory
sudo cp ~/project/my-font.ttf /usr/share/fonts/

# Update the font cache
sudo fc-cache -f -v