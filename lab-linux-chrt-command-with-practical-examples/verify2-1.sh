#!/bin/bash
sleep_pid=$(pgrep sleep)
if [[ $(chrt -p $sleep_pid) != *"SCHED_FIFO"* || $(chrt -p $sleep_pid) != *"20"* ]]; then
  exit 1
fi