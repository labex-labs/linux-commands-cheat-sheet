#!/bin/bash
sudo unattended-upgrade
if [ $? -eq 0 ]; then
    echo "Automatic updates were successfully executed."
    exit 0
else
    echo "Automatic updates failed to execute."
    exit 1
fi