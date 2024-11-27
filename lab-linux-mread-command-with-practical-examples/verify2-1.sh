#!/bin/bash
echo "This is a sample text file." > sample.txt

# Verify reading a specific number of bytes
if [ "$(mread -n 10 sample.txt)" = "This is a " ]; then
  echo "Passed: Reading a specific number of bytes"
else
  echo "Failed: Reading a specific number of bytes"
  exit 1
fi

# Verify reading a specific number of characters
if [ "$(mread -c 10 sample.txt)" = "This is a " ]; then
  echo "Passed: Reading a specific number of characters"
else
  echo "Failed: Reading a specific number of characters"
  exit 1
fi

# Verify skipping bytes before reading
if [ "$(mread -s 5 -n 10 sample.txt)" = "a sample " ]; then
  echo "Passed: Skipping bytes before reading"
else
  echo "Failed: Skipping bytes before reading"
  exit 1
fi

# Verify reading from standard input
if [ "$(echo "This is another sample text." | mread -c 10)" = "This is an" ]; then
  echo "Passed: Reading from standard input"
else
  echo "Failed: Reading from standard input"
  exit 1
fi

# Verify suppressing file name header
if [ "$(mread -q -n 10 sample.txt)" = "This is a " ]; then
  echo "Passed: Suppressing file name header"
else
  echo "Failed: Suppressing file name header"
  exit 1
fi

rm sample.txt