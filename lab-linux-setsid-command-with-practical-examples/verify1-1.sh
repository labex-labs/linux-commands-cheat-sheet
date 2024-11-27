#!/bin/bash
if ! ps -o sid,pid,cmd | grep -q 'sleep 60'; then
  exit 1
fi