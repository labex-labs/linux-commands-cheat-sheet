#!/bin/bash
if sudo lpstat -a | grep -q "accepting requests"; then
  exit 0
else
  echo "The 'myprinter' queue is not accepting requests."
  exit 1
fi