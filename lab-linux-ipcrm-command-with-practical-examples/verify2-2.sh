#!/bin/bash
ipcs_count=$(ipcs | wc -l)
if [ $ipcs_count -gt 3 ]; then
    exit 1
fi