#!/bin/bash
if ipcs | grep -q "0          labex      600        1"; then
    exit 1
fi