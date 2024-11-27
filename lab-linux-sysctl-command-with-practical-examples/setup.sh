#!/bin/bash

# Modify Kernel Parameters Using sysctl Command
sudo sysctl -w net.ipv4.ip_forward=1
sudo sysctl -w vm.swappiness=10