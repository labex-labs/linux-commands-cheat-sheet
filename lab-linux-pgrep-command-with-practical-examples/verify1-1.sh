#!/bin/bash
if ! pgrep bash > /dev/null; then
  echo "pgrep command did not return any PIDs for the 'bash' process"
  exit 1
fi
echo "pgrep command successfully returned PIDs for the 'bash' process"
exit 0