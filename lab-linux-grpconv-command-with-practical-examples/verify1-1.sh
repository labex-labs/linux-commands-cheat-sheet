#!/bin/bash
if ! sudo grpconv &> /dev/null; then
    echo "Failed to run the grpconv command"
    exit 1
fi