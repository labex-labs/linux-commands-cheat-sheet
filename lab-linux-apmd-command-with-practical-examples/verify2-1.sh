#!/bin/bash
if ! sudo apmd -s | grep -q "Battery 0: charged, 100% remaining"; then
    exit 1
fi