#!/bin/bash

# Check if nginx service is running
if ! sudo service nginx status &> /dev/null; then
    # Enable nginx service to start automatically at boot
    sudo update-rc.d nginx defaults
fi