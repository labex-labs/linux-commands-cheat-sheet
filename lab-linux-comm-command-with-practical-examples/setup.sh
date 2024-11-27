#!/bin/bash

# Create sample files
cat > file1.txt <<EOF
apple
banana
cherry
date
fig
EOF

cat > file2.txt <<EOF
banana
cherry
date
grape
EOF

# Ensure the files are sorted
sort file1.txt -o file1.txt
sort file2.txt -o file2.txt