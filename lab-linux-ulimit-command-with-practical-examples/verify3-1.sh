#!/bin/bash
ulimit -v 1048576
./allocate_memory.sh
if [ ${#big_array[@]} -ne 1048576 ]; then
    exit 1
fi
exit 0