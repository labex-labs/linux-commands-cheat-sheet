#!/bin/bash
if ! sudo netstat -s | grep -q 'Active opens'; then
  exit 1
fi
if ! sudo netstat -i | grep -q 'enp0s3'; then
  exit 1
fi