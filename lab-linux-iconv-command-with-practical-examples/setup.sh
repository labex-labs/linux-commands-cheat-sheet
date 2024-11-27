#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Convert UTF-8 to ISO-8859-1 (Latin-1)
echo "こんにちは世界" > ~/project/utf8.txt
iconv -f UTF-8 -t ISO-8859-1 ~/project/utf8.txt -o ~/project/latin1.txt

# Convert UTF-8 to UTF-16
iconv -f UTF-8 -t UTF-16 ~/project/utf8.txt -o ~/project/utf16.txt