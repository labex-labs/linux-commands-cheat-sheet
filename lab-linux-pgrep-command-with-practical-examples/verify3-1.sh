#!/bin/bash
if ! ps -f -p $(pgrep bash) > /dev/null; then
  echo "pgrep and ps commands did not return the expected process information"
  exit 1
fi
echo "pgrep and ps commands successfully returned the process information"
exit 0