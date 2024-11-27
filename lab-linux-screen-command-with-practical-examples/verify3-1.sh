#!/bin/bash
screen -S myapp -X stuff "python3 -m http.server 8000^M"
screen -ls | grep -q "myapp"
if [ $? -ne 0 ]; then
    echo "Failed to create and detach from a screen session named 'myapp'."
    exit 1
fi

screen -r myapp -X stuff $'\003'
if [ $? -ne 0 ]; then
    echo "Failed to reattach to the 'myapp' screen session."
    exit 1
else
    echo "Successfully detached and reattached to the 'myapp' screen session."
    exit 0
fi