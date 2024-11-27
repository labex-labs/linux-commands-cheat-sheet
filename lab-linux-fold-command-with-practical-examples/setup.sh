#!/bin/bash

# Create the example.txt file
echo "This is a long line of text that needs to be folded to fit within a certain width." > example.txt
echo "Another long line of text that should be folded." >> example.txt

# Fold the file with the default width of 80 columns
fold example.txt

# Fold the file with a width of 40 columns
fold -w 40 example.txt

# Fold the file based on characters instead of columns
fold -c example.txt

# Fold the file and break lines at spaces
fold -s example.txt