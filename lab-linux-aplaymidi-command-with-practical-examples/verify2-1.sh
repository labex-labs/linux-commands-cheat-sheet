#!/bin/bash
if aplaymidi -p 20:0 ~/project/example.mid &> /dev/null; then
  echo "MIDI file playback successful."
  exit 0
else
  echo "Failed to play the MIDI file."
  exit 1
fi