#!/bin/bash
if ! bzmore log.txt.bz2 | grep -q "Error: Something went wrong."; then
    exit 1
fi
if ! bzmore log.txt.bz2 | grep -q "Error"; then
    exit 1
fi
if ! bzmore /usr/share/man/man1/bzmore.1.bz2 | grep -q "bzmore"; then
    exit 1
fi