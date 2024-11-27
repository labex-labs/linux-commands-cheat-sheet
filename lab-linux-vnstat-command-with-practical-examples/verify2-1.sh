#!/bin/bash
if ! sudo vnstat -i eth0 | grep "rx" > /dev/null; then
    exit 1
fi