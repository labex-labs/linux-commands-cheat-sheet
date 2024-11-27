#!/bin/bash

# Create a directory for the lab
mkdir -p ~/project/system-monitoring

# Change to the lab directory
cd ~/project/system-monitoring

# Create a Python script to simulate a running process
cat << EOF > my_script.py
import time
print('Running process...')
time.sleep(60)
EOF

# Start the Python script in the background
python3 my_script.py &