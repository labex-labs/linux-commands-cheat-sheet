#!/bin/bash

# Install screen package
sudo apt-get update
sudo apt-get install -y screen

# Create new screen session
screen -S mysession
screen -S othersession

# List all screen sessions
screen -ls