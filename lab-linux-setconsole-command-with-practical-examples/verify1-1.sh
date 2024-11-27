#!/bin/bash
if [ "$(sudo setconsole -g)" == "/dev/tty1" ]; then
  exit 0
else
  echo "The current system console device is not /dev/tty1."
  exit 1
fi