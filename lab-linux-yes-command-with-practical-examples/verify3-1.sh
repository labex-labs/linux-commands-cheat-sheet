#!/bin/bash
mkdir -p ~/test_directory
yes | rm -rf ~/test_directory
if [ ! -d ~/test_directory ]; then
  exit 0
else
  echo "The test_directory was not deleted."
  exit 1
fi