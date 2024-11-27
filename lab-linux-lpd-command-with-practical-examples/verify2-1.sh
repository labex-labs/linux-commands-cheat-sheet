#!/bin/bash
if sudo lpstat -a | grep -q "myprinter"; then
  exit 0
else
  echo "The 'myprinter' queue was not created successfully."
  exit 1
fi