#!/bin/bash
if ping -c 3 slowweb.com | grep 'time=1000'; then
  exit 0
else
  exit 1
fi