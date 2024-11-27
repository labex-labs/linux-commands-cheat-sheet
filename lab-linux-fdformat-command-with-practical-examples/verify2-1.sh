#!/bin/bash
if ! sudo fdformat /dev/fd0 | grep -q "Formatting ... done"; then
  exit 1
fi