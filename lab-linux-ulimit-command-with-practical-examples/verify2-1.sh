#!/bin/bash
ulimit -f 2097152
./create_big_file.sh
if [ ! -f big_file.txt ]; then
    exit 1
fi
rm -f big_file.txt
exit 0