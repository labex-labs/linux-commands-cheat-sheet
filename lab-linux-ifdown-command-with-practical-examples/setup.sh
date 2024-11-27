#!/bin/bash

# Check the current status of the eth0 network interface
ip link show eth0

# Disable the eth0 network interface
sudo ifdown eth0

# Verify that the interface has been disabled
ip link show eth0