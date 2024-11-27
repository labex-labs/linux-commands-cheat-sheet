#!/bin/bash
if ! sudo repquota -u labex | grep -q "labex"; then
    exit 1
fi