#!/bin/bash
if ! date --help | grep -q "Usage: date \[OPTION\]... \[\+FORMAT\]"; then
  exit 1
fi