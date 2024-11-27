#!/bin/bash
if [ "$(sudo logrotate --version | awk '{print $2}')" != "3.18.1" ]; then
  exit 1
fi