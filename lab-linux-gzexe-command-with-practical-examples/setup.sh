#!/bin/bash

# Create sample executable file
mkdir -p ~/project
echo '#!/bin/bash
echo "This is a sample executable file."' > ~/project/sample_executable.sh
chmod +x ~/project/sample_executable.sh

# Check gzexe version
gzexe --version

# Compress executable file using gzexe
gzexe ~/project/sample_executable.sh

# Verify compression
ls -l ~/project/sample_executable.sh
ls -l ~/project/sample_executable.sh.gz