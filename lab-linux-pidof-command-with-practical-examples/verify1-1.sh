#!/bin/bash
if ! pidof nginx > /dev/null; then
    echo "Failed to find the nginx process using pidof"
    exit 1
fi
echo "Successfully found the nginx process using pidof"
exit 0