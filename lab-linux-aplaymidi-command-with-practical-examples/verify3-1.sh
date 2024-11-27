#!/bin/bash
if aplaymidi -p 20:0,20:1 ~/project/example.mid &> /dev/null; then
  echo "MIDI file played on multiple devices successfully."
  exit 0
else
  echo "Failed to play the MIDI file on multiple devices."
  exit 1
fi