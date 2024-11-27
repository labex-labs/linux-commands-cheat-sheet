#!/bin/bash
if [ -f ~/project/env_vars.sh ] && grep -q "\$HOME" ~/project/env_vars.sh && grep -q "\$PWD" ~/project/env_vars.sh && grep -q "\$SHELL" ~/project/env_vars.sh; then
  exit 0
else
  exit 1
fi