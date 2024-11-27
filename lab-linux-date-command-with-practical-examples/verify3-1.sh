#!/bin/bash
if ! date +"%Y-%m-%d %H:%M:%S" | grep -q "$(date +"%Y-%m-%d %H:%M:%S")"; then
  exit 1
fi
if ! date +"%A, %B %d, %Y - %H:%M:%S" | grep -q "$(date +"%A, %B %d, %Y - %H:%M:%S")"; then
  exit 1
fi