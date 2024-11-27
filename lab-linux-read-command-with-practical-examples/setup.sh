#!/bin/bash

# Create directory structure
mkdir -p ~/project/read-command

# Set permissions
chmod -R 755 ~/project

# Prompt user for input and store in variable
read -p "Enter your name: " name
echo "Hello, $name!"

read -p "What is your favorite color? " favorite_color
echo "Your favorite color is $favorite_color."