#!/bin/bash
if mount | grep "/mnt/example3"; then
  exit 1
else
  exit 0
fi