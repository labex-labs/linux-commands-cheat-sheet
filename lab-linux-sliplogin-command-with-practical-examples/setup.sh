#!/bin/bash

# Create the sliplogin configuration file
mkdir -p ~/project
cat << EOF > ~/project/sliplogin.conf
# sliplogin.conf
SLIP_DEVICE=/dev/ttyS0
SLIP_SPEED=38400
SLIP_LOCAL_ADDR=192.168.1.1
SLIP_REMOTE_ADDR=192.168.1.2
EOF