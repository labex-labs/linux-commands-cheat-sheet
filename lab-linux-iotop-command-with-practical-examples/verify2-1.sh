#!/bin/bash
if command -v iotop >/dev/null 2>&1; then
  exit 0
else
  exit 1
fi