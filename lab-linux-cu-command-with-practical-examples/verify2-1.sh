#!/bin/bash
if sudo cu -l /dev/ttyUSB0 -s 9600 -t << EOF
~.
EOF
then
    echo "cu connection established successfully"
    exit 0
else
    echo "Failed to establish cu connection"
    exit 1
fi