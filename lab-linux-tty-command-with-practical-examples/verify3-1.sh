#!/bin/bash
if [ -f /tmp/terminal-session.log ]; then
  exit 0
else
  echo "The terminal session log file was not created."
  exit 1
fi