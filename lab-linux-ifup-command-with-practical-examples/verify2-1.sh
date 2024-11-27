#!/bin/bash
if ! ip addr show eth1 | grep -q "192.168.1.100"; then
    exit 1
fi