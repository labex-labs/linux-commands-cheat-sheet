#!/bin/bash
dd if=/dev/urandom of=sample.bin bs=1M count=5 &> /dev/null

# Verify reading the first 1 MB
if [ "$(mread -n $((1024*1024)) sample.bin | wc -c)" -eq $((1024*1024)) ]; then
  echo "Passed: Reading the first 1 MB"
else
  echo "Failed: Reading the first 1 MB"
  exit 1
fi

# Verify reading the last 1 MB
if [ "$(mread -s $((5*1024*1024-1024*1024)) -n $((1024*1024)) sample.bin | wc -c)" -eq $((1024*1024)) ]; then
  echo "Passed: Reading the last 1 MB"
else
  echo "Failed: Reading the last 1 MB"
  exit 1
fi

# Verify reading the file in chunks
chunk_size=$((512*1024))
offset=0
total_bytes=0
while [ $offset -lt $((5*1024*1024)) ]; do
  bytes=$(mread -s $offset -n $chunk_size sample.bin | wc -c)
  total_bytes=$((total_bytes + bytes))
  offset=$((offset + chunk_size))
done
if [ $total_bytes -eq $((5*1024*1024)) ]; then
  echo "Passed: Reading the file in chunks"
else
  echo "Failed: Reading the file in chunks"
  exit 1
fi

rm sample.bin