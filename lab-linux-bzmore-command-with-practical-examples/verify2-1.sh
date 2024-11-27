#!/bin/bash
if ! bzmore -c large.txt.bz2 | grep -q "a-zA-Z0-9"; then
    exit 1
fi
if ! bzmore -d large.txt.bz2 | grep -q "^[a-zA-Z0-9]*$"; then
    exit 1
fi
if ! bzmore -l large.txt.bz2 | grep -q "a-zA-Z0-9"; then
    exit 1
fi
if ! bzmore -n large.txt.bz2 | grep -q "a-zA-Z0-9"; then
    exit 1
fi