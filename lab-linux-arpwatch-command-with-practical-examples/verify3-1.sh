#!/bin/bash
if ! sudo systemctl status arpwatch | grep -q 'Active: active'; then
    exit 1
fi
if ! sudo tail -n 1 /var/log/arpwatch.log | grep -q 'new station'; then
    exit 1
fi