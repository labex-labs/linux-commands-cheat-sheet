#!/bin/bash
ulimit -n 4096
if ! ulimit -n | grep -q '4096'; then
    exit 1
fi
exit 0