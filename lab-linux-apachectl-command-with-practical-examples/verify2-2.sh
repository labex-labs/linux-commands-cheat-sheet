#!/bin/bash
status=$(sudo apachectl status | grep "Apache Server")
if [[ "$status" == *"not running"* ]]; then
  exit 0
else
  echo "Apache server is still running"
  exit 1
fi