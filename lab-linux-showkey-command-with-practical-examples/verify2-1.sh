#!/bin/bash
if sudo showkey | grep -q "key pressed"; then
  echo "showkey is capturing keyboard input"
  exit 0
else
  echo "showkey is not capturing keyboard input"
  exit 1
fi