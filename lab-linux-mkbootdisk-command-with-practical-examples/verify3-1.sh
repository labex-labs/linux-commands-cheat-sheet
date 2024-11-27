#!/bin/bash
if ! sudo dd if=/dev/sdb of=/dev/null bs=512 count=1 2>/dev/null
then
    exit 1
fi