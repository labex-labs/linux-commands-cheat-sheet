#!/bin/bash
# Test the script with no arguments
~/project/script.sh
if [ $? -eq 1 ]; then
  echo "Script exited with the expected exit code (1) when no arguments were provided."
else
  echo "Script did not exit with the expected exit code (1) when no arguments were provided."
  exit 1
fi

# Test the script with a non-existent file
~/project/script.sh non-existent.txt
if [ $? -eq 2 ]; then
  echo "Script exited with the expected exit code (2) when a non-existent file was provided."
else
  echo "Script did not exit with the expected exit code (2) when a non-existent file was provided."
  exit 1
fi

# Test the script with a valid file
~/project/script.sh ~/project/script.sh
if [ $? -eq 0 ]; then
  echo "Script exited with the expected exit code (0) when a valid file was provided."
else
  echo "Script did not exit with the expected exit code (0) when a valid file was provided."
  exit 1
fi

echo "All tests passed."
exit 0