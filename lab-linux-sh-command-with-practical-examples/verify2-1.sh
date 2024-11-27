#!/bin/bash
if [ -f ~/project/args.sh ] && grep -q "\$1" ~/project/args.sh && grep -q "\$2" ~/project/args.sh && grep -q "\$@" ~/project/args.sh && grep -q "\$#" ~/project/args.sh; then
  exit 0
else
  exit 1
fi