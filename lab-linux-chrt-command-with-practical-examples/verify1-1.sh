#!/bin/bash
if [[ $(chrt -p $$) != *"SCHED_FIFO"* || $(chrt -p $$) != *"10"* ]]; then
  exit 1
fi