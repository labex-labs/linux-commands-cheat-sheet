#!/bin/bash
if [ "$(whoami)" != "labex" ]; then
  echo "Failed to switch to labex user"
  exit 1
fi