#!/bin/bash
if [ "$(mesg)" == "is y" ]; then
  exit 0
else
  echo "Message permission is not set to 'y'"
  exit 1
fi