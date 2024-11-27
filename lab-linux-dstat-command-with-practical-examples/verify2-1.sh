#!/bin/bash
if dstat --cpu | grep -q 'usr'; then
    exit 0
else
    exit 1
fi