#!/bin/bash
if ! sudo vnstat --version | grep "vnstat 2.6"; then
    exit 1
fi