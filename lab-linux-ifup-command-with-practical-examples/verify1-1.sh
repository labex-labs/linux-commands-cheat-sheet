#!/bin/bash
if ! sudo ifup eth0 &> /dev/null; then
    exit 1
fi