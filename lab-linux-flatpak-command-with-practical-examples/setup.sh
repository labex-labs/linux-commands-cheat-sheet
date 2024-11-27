#!/bin/bash

# Install Flatpak
sudo apt install -y flatpak

# Add Flathub repository
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo