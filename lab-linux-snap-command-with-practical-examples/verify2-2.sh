#!/bin/bash
vlc_version=$(snap list vlc | awk '{print $2}')
if [ "$vlc_version" != "3.0.17.3" ]; then
    echo "VLC Snap package is not updated to the latest version"
    exit 1
else
    exit 0
fi