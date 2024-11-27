#!/bin/bash
if [ "$(yum --version | head -n 1 | awk '{print $2}')" != "4.4.2" ]; then
  exit 1
fi