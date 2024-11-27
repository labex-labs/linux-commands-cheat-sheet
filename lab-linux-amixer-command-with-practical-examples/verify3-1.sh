#!/bin/bash
if ! amixer scontrols | grep -q "Simple mixer control 'Headphone',0"; then
  exit 1
fi
if ! amixer sset Headphone 50% | grep -q "Front Left: Playback 32768 \[50%\] \[-6.00dB\] \[on\]"; then
  exit 1
fi
if ! amixer sset Headphone mute | grep -q "Front Left: Playback 65536 \[100%\] \[0.00dB\] \[off\]"; then
  exit 1
fi
if ! amixer sset Headphone unmute | grep -q "Front Left: Playback 65536 \[100%\] \[0.00dB\] \[on\]"; then
  exit 1
fi
exit 0