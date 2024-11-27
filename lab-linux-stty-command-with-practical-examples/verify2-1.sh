#!/bin/bash
if ! stty -a | grep -q "cs7"; then
  exit 1
fi
if ! stty -a | grep -q "crtscts"; then
  exit 1
fi
if ! stty -a | grep -q "ignbrk brkint"; then
  exit 1
fi
exit 0