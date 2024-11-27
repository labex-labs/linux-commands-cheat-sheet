#!/bin/bash
deps=$(sudo dnf deplist tree | grep provider | awk -F':' '{print $2}')
for dep in $deps; do
    if ! rpm -q $dep &> /dev/null; then
        echo "Missing dependency: $dep"
        exit 1
    fi
done
echo "All dependencies for the 'tree' package are installed."
exit 0