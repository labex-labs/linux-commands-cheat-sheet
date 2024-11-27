#!/bin/bash

# Check mingetty version
mingetty --version

# Create mingetty configuration file
cat > ~/project/mingetty.conf <<EOF
# /etc/inittab-like config for mingetty
1
EOF