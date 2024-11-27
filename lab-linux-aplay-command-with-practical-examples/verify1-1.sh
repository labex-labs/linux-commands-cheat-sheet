#!/bin/bash
if command -v aplay >/dev/null; then
  exit 0
else
  exit 1
fi