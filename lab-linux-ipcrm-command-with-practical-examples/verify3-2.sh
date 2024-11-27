#!/bin/bash
if ipcs | grep -q "0          labex      660        0            0"; then
    exit 1
fi