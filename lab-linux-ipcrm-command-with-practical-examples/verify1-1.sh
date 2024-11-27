#!/bin/bash
ipcs_count=$(ipcs | wc -l)
if [ $ipcs_count -lt 4 ]; then
    exit 1
fi