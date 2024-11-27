#!/bin/bash
if ! ulimit -c 10240 > /dev/null 2>&1; then
    exit 1
fi
if ! ulimit -c | grep -q '10240'; then
    exit 1
fi
exit 0