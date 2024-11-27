#!/bin/bash
if ! pgrep -f ^web > /dev/null; then
  echo "pgrep command did not return any PIDs for processes starting with 'web'"
  exit 1
fi
if ! pgrep -u labex > /dev/null; then
  echo "pgrep command did not return any PIDs for processes owned by the 'labex' user"
  exit 1
fi
if ! pgrep -l nginx > /dev/null; then
  echo "pgrep command did not return any PIDs for processes containing 'nginx'"
  exit 1
fi
echo "pgrep command successfully returned PIDs for the specified criteria"
exit 0