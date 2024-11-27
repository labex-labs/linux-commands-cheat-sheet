#!/bin/bash

# Check current frame buffer device information
sudo fbset -i

# List all available frame buffer modes
sudo fbset -l

# Change screen resolution to 800x600 and color depth to 32-bit
sudo fbset -mode "800x600-60"