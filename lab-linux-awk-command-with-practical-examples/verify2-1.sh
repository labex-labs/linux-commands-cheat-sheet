#!/bin/bash
if awk -F'[ :]' '{print $1, $2, $3, $4, $5, $6}' log.txt | grep -q '2023-04-01 10 30 00 INFO This'; then
  if awk -F'[ :]' '$5 == "ERROR" {print $1, $2, $3, $4, $5, $6}' log.txt | grep -q '2023-04-02 11 45 00 ERROR An'; then
    exit 0
  else
    echo "Failed to filter and print the lines with the 'ERROR' log level."
    exit 1
  fi
else
  echo "Failed to extract the date, time, and log level from each line."
  exit 1
fi