#!/bin/bash
if ! grep -q $'\t' ~/project/sample.txt; then
    exit 1
fi