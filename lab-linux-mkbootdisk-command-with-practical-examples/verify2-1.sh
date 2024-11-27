#!/bin/bash
if ! dd if=/dev/sdb of=/dev/null bs=1M count=1 2>/dev/null
then
    exit 1
fi