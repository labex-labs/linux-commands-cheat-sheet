#!/bin/bash
if [ "$(sudo setconsole -g)" == "/dev/tty2" ]; then
  exit 0
else
  echo "The system console device has not been changed to /dev/tty2."
  exit 1
fi