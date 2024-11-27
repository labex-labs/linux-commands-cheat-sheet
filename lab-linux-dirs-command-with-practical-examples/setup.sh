#!/bin/bash

# Change to the project directory
cd ~/project

# Explore the directory stack using the dirs command
echo "Exploring the directory stack using the dirs command:"
dirs
dirs -l
dirs -p
dirs -v

# Add directories to the directory stack using the pushd command
echo "Adding directories to the directory stack using the pushd command:"
pushd /tmp
pushd /var/log
pushd /etc

# Explore the updated directory stack
echo "Exploring the updated directory stack:"
dirs
dirs -l
dirs -p
dirs -v