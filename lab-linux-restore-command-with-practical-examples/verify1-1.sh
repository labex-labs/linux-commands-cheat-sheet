#!/bin/bash
if ! sudo restore --help | grep -q "restore files or file systems"; then
    exit 1
fi