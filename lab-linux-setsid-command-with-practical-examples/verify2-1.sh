#!/bin/bash
pid=$(ps -o pid,cmd | grep 'sleep 60' | awk '{print $1}')
if [ -z "$pid" ]; then
  exit 1
fi
if ! cat /proc/$pid/fd/1 | grep -q 'Process completed'; then
  exit 1
fi