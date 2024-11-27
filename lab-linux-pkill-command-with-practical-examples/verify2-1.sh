#!/bin/bash
if pgrep -f 'firefox|gedit' > /dev/null; then
  echo "Firefox or gedit process still running. Please terminate them using pkill."
  exit 1
else
  exit 0
fi