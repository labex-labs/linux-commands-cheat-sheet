#!/bin/bash

# Create the example.txt file with tabs
cat > ~/project/example.txt <<EOF
Hello	World
  This	is a	test file.
EOF

# Convert tabs to spaces in the example.txt file
expand -t 4 ~/project/example.txt > ~/project/example_expanded.txt