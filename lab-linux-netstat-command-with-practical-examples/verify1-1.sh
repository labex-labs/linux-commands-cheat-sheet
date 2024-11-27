#!/bin/bash
if ! sudo netstat -antp | grep -q 'LISTEN'; then
  exit 1
fi