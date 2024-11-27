#!/bin/bash

# Check gawk version
gawk --version

# Create data.txt file
mkdir -p ~/project
cat > ~/project/data.txt << EOF
Name,Age,City
John,25,New York
Jane,30,London
Bob,35,Paris
EOF

# Set permissions
chmod 644 ~/project/data.txt