#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Download the example.txt file
if [ ! -f ~/project/example.txt ]; then
  cd ~/project
  curl -o example.txt https://raw.githubusercontent.com/stiang/remove-accents/master/data/words_alpha.txt
fi