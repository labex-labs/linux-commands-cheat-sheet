#!/bin/bash
if ! type dc > /dev/null 2>&1; then
  echo "The dc command is not installed or not available in the environment."
  exit 1
fi

if ! dc -e '3 4 + p' | grep -q '7'; then
  echo "The dc command is not functioning as expected."
  exit 1
fi

echo "The dc command is working as expected."
exit 0