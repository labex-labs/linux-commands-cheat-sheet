#!/bin/bash
if id -Gn labex | grep -q "developers"; then
  exit 0
else
  exit 1
fi