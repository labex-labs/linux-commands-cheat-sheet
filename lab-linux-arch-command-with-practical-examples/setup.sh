#!/bin/bash

# Check the system architecture
arch_type=$(uname -m)
echo "System architecture: $arch_type"

# Create the project directory if it doesn't exist
project_dir="~/project"
if [ ! -d "$project_dir" ]; then
  mkdir -p "$project_dir"
  echo "Created project directory: $project_dir"
fi

echo "Environment is ready for the System Monitoring and Management Lab."