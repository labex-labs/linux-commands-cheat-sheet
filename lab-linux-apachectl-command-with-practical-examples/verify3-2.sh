#!/bin/bash
status=$(sudo apachectl fullstatus | grep "Server Version")
if [[ "$status" == *"Apache/2.4.52"* ]]; then
  exit 0
else
  echo "Unexpected Apache server version"
  exit 1
fi