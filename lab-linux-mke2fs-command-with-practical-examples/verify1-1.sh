#!/bin/bash
if sudo mke2fs --help | grep -q "Usage: mke2fs"; then
    exit 0
else
    exit 1
fi