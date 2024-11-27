#!/bin/bash
if iostat | grep -q "avg-cpu" && iostat -d | grep -q "Device"; then
  exit 0
else
  exit 1
fi