#!/bin/bash
if sudo ifup eth1 &> /dev/null; then
    exit 1
fi