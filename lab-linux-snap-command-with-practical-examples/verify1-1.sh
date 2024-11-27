#!/bin/bash
snap_version=$(snap version | grep "snap" | awk '{print $2}')
if [ "$snap_version" == "2.57.4" ]; then
    exit 0
else
    echo "Snap version is not 2.57.4"
    exit 1
fi