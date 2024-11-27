#!/bin/bash
if sudo service nginx status | grep -q "nginx is running"; then
  exit 0
else
  exit 1
fi