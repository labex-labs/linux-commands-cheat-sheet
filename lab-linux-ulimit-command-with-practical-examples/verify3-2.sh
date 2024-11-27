#!/bin/bash
ulimit -u 100
./spawn_processes.sh
if ! ps aux | grep -c 'allocate_memory.sh' | grep -q '100'; then
    exit 1
fi
exit 0