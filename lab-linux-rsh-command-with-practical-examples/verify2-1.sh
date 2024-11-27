#!/bin/bash
if ! rsh remote-server echo "Connected to remote system" &> /dev/null; then
  exit 1
fi