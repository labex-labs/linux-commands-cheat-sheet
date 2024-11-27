#!/bin/bash
if ! command -v flatpak &> /dev/null; then
    echo "Flatpak is not installed. Please install Flatpak first."
    exit 1
fi
if ! flatpak remote-list | grep -q flathub; then
    echo "Flathub remote is not added. Please add the Flathub remote."
    exit 1
fi
echo "Flatpak is installed and Flathub remote is added successfully."