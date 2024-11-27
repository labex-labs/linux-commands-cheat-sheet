#!/bin/bash

# Check if bc is installed
if ! command -v bc &> /dev/null
then
    sudo apt-get update
    sudo apt-get install -y bc
fi

# Enter bc interactive mode
bc <<EOF
2 + 3
10 - 4
5 * 6
20 / 4
(10 + 5) * 3
quit
EOF