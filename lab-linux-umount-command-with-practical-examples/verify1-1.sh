#!/bin/bash
if mount | grep "/mnt/example"; then
  exit 1
else
  exit 0
fi