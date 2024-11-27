#!/bin/bash
if [ "$(mingetty --version | grep -o -E '[0-9]+\.[0-9]+')" != "1.08" ]; then
  exit 1
fi