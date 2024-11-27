#!/bin/bash

# Create project directory
mkdir -p ~/project

# Change to project directory
cd ~/project

# Create file.txt
touch file.txt

# Create mydir directory
mkdir mydir

# Change group ownership of file.txt to admin group
sudo chgrp admin file.txt

# Change group ownership of mydir to admin group
sudo chgrp -R admin mydir

# Verify group ownership
ls -l