#!/bin/bash

# Check the current system console device
sudo setconsole -g

# Redirect the console output to /dev/null
sudo setconsole /dev/null

# Restore the console to the first virtual terminal
sudo setconsole /dev/tty1