#!/bin/bash
if ! amixer get Master | grep -q "Mono: Playback 65536 \[100%\] \[0.00dB\] \[on\]"; then
  exit 1
fi
if ! amixer set Master 50% | grep -q "Mono: Playback 32768 \[50%\] \[-6.00dB\] \[on\]"; then
  exit 1
fi
if ! amixer set Master 65536 | grep -q "Mono: Playback 65536 \[100%\] \[0.00dB\] \[on\]"; then
  exit 1
fi
if ! amixer set Master mute | grep -q "Mono: Playback 65536 \[100%\] \[0.00dB\] \[off\]"; then
  exit 1
fi
if ! amixer set Master unmute | grep -q "Mono: Playback 65536 \[100%\] \[0.00dB\] \[on\]"; then
  exit 1
fi
exit 0