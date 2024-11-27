#!/bin/bash
if aplaymidi -l | grep -q "TiMidity port 0"; then
  exit 0
else
  echo "Unable to find the TiMidity port 0 MIDI device."
  exit 1
fi