#!/bin/bash
if ! rsh remote-server echo "Remote command executed successfully" &> /dev/null; then
  exit 1
fi