#!/bin/bash
fifo_pid=$(pgrep -n sleep)
rr_pid=$(pgrep -n -n sleep)
batch_pid=$(pgrep -n -n -n sleep)
idle_pid=$(pgrep -n -n -n -n sleep)

if [[ $(chrt -p $fifo_pid) != *"SCHED_FIFO"* || $(chrt -p $fifo_pid) != *"10"* ]]; then
  exit 1
fi

if [[ $(chrt -p $rr_pid) != *"SCHED_RR"* || $(chrt -p $rr_pid) != *"15"* ]]; then
  exit 1
fi

if [[ $(chrt -p $batch_pid) != *"SCHED_BATCH"* ]]; then
  exit 1
fi

if [[ $(chrt -p $idle_pid) != *"SCHED_IDLE"* ]]; then
  exit 1
fi