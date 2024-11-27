#!/bin/bash

# Adjust resource limits using ulimit
echo "Adjusting resource limits using ulimit..."

# Set the maximum size of core files to 10 MB
ulimit -c 10240

# Create a directory for the experiment
mkdir -p ~/project/system-config-lab

# Change to the experiment directory
cd ~/project/system-config-lab

# Create a script to exceed the default resource limits
cat << EOF > create_big_file.sh
#!/bin/bash

# Create a 1 GB file
dd if=/dev/zero of=big_file.txt bs=1M count=1024
EOF

# Make the script executable
chmod +x create_big_file.sh

echo "Environment setup complete."