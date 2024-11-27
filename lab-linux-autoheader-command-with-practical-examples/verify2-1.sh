#!/bin/bash
if dpkg-query -W -f='${Status}' autoconf 2>/dev/null | grep -q "install ok installed"; then
  exit 0
else
  echo "The autoconf package is not installed. Please install it using 'sudo apt-get install -y autoconf'."
  exit 1
fi