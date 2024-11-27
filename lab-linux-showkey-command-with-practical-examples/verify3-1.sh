#!/bin/bash
if sudo showkey | grep -q "key pressed" && sudo showkey | grep -q "(" && sudo showkey | grep -q ")"; then
  echo "showkey output includes key codes and characters"
  exit 0
else
  echo "showkey output does not include key codes and characters"
  exit 1
fi