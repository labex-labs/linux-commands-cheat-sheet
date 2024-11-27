#!/bin/bash
if ! flatpak list | grep -q org.gimp.GIMP; then
    echo "GIMP Flatpak application is not installed. Please install it first."
    exit 1
fi
if ! flatpak run org.gimp.GIMP --version &> /dev/null; then
    echo "GIMP Flatpak application cannot be launched using the custom runtime. Please check the runtime configuration."
    exit 1
fi
echo "GIMP Flatpak application is installed and can be launched using the custom runtime successfully."