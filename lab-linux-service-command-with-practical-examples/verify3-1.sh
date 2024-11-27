#!/bin/bash
if sudo service apache2 status | grep -q "Apache2 is not running"; then
  sudo service apache2 start
  if ! sudo service apache2 status | grep -q "Apache2 is running"; then
    exit 1
  fi
else
  exit 1
fi
if ! curl http://localhost | grep -q "It works!"; then
  exit 1
fi