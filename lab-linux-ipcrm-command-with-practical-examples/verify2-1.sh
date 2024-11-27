#!/bin/bash
if ipcs | grep -q "0          labex"; then
    exit 1
fi