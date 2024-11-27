#!/bin/bash
if ! sudo fbset -i &> /dev/null; then
  echo "Failed to run 'fbset -i' command"
  exit 1
fi
if ! sudo fbset -l &> /dev/null; then
  echo "Failed to run 'fbset -l' command"
  exit 1
fi