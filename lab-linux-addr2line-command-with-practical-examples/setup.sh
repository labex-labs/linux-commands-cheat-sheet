#!/bin/bash

# Create a directory for the addr2line example
mkdir -p ~/project/addr2line
cd ~/project/addr2line

# Verify the existing development environment
echo "Verifying existing development environment..."
which python3 && python3 --version
which go && go version
which java && java -version
which node && node --version

echo "Environment verification complete."