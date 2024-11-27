#!/bin/bash
if ! which arpwatch > /dev/null; then
    exit 1
fi
if ! sudo systemctl status arpwatch | grep -q 'Active: active'; then
    exit 1
fi