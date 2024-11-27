#!/bin/bash
if dstat --mem | grep -q 'used'; then
    exit 0
else
    exit 1
fi