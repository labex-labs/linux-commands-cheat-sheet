#!/bin/bash
if ! dc -e '5 7 + p' | grep -q '12'; then
  echo "The dc command is not performing addition correctly."
  exit 1
fi

if ! dc -e '10 4 - p' | grep -q '6'; then
  echo "The dc command is not performing subtraction correctly."
  exit 1
fi

if ! dc -e '3 4 * p' | grep -q '12'; then
  echo "The dc command is not performing multiplication correctly."
  exit 1
fi

if ! dc -e '15 3 / p' | grep -q '5'; then
  echo "The dc command is not performing division correctly."
  exit 1
fi

echo "The dc command is performing basic arithmetic operations correctly."
exit 0