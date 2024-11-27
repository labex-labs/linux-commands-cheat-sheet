#!/bin/bash

# Create a text file with a list of names
echo "Alice Bob Charlie David" > ~/project/names.txt

# Use xargs to print each name from the file
cat ~/project/names.txt | xargs echo

# Use xargs to create a directory for each name in the file
cat ~/project/names.txt | xargs mkdir -p ~/project

# Create a file with a list of URLs
echo "https://www.example.com https://www.google.com https://www.github.com" > ~/project/urls.txt

# Use xargs to execute the curl command on each URL
cat ~/project/urls.txt | xargs curl -s -o /dev/null -w '%{url_effective} -> %{http_code}\n'