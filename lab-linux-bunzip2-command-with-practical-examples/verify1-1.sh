#!/bin/bash
if ! bunzip2 --help | grep -q "Usage: bunzip2"; then
  exit 1
fi