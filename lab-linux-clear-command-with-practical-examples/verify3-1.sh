#!/bin/bash
if [ ! -f ~/project/clear.sh ]; then
  exit 1
fi
if ! grep -q "clear" ~/project/clear.sh; then
  exit 1
fi
if ! grep -q "echo" ~/project/clear.sh; then
  exit 1
fi
if ! chmod +x ~/project/clear.sh; then
  exit 1
fi
if [ "$(~/project/clear.sh)" != $'[The terminal screen is now cleared]\nThe terminal has been cleared.' ]; then
  exit 1
fi