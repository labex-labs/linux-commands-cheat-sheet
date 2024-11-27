#!/bin/bash
sudo apt update > /dev/null 2>&1
if ! sudo apt upgrade -y > /dev/null 2>&1; then
  exit 1
fi
exit 0