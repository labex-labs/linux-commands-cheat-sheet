#!/bin/bash
if ! grep -q '^\s*\S' ~/project/sample.txt; then
    exit 1
fi