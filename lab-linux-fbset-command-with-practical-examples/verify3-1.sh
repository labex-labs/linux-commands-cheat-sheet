#!/bin/bash
if ! sudo fbset -i | grep -q "geometry 800 600 800 600 32"; then
  echo "Failed to set screen resolution to 800x600 and depth to 32-bit"
  exit 1
fi
if ! sudo fbset -i | grep -q "accel true"; then
  echo "Failed to enable frame buffer acceleration"
  exit 1
fi
if ! test -f /etc/fb.modes; then
  echo "Failed to save display settings to /etc/fb.modes"
  exit 1
fi