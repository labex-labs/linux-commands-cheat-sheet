#!/bin/bash
if ! env | grep -q "MY_APP_HOME=/home/labex/myapp"; then
  exit 1
fi
if ! env | grep -q "MY_APP_VERSION=1.2.3"; then
  exit 1
fi
if ! env | grep -q "MY_APP_CONFIG=/etc/myapp.conf"; then
  exit 1
fi