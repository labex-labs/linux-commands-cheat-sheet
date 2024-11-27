#!/bin/bash
status=$(sudo apachectl status | grep "Apache Server")
if [[ "$status" == *"running"* ]]; then
  exit 0
else
  echo "Apache server is not running"
  exit 1
fi