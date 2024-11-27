#!/bin/bash
if snap list | grep -q "vlc"; then
    exit 0
else
    echo "VLC Snap package is not installed"
    exit 1
fi