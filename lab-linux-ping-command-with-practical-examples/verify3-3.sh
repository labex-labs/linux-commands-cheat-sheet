#!/bin/bash
if ping -c 4 lossy.com | grep '50% packet loss'; then
  exit 0
else
  exit 1
fi