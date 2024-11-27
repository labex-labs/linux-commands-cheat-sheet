#!/bin/bash
if ! amixer | grep -q "Front Left: Playback 65536 \[100%\] \[0.00dB\] \[on\]"; then
  exit 1
fi
if ! amixer set Master 50% | grep -q "Front Left: Playback 32768 \[50%\] \[-6.00dB\] \[on\]"; then
  exit 1
fi
exit 0