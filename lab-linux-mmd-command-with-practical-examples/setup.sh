#!/bin/bash

# Create Markdown file
mmd -o sample.md

# Add content to sample.md
cat << EOF > sample.md
# This is a Heading

This is a paragraph with some **bold text** and _italic text_.

- Unordered list item 1
- Unordered list item 2
- Unordered list
EOF

# Set permissions
chmod 644 sample.md