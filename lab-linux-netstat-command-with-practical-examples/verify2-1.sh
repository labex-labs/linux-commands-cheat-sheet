#!/bin/bash
if ! sudo netstat -antp | grep -q 'LISTEN'; then
  exit 1
fi
if ! sudo netstat -antp | grep -q 'ESTABLISHED'; then
  exit 1
fi