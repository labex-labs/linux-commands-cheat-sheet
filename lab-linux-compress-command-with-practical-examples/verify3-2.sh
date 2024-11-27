#!/bin/bash
if [[ $(ls -l example.txt.Z | awk '{print $5}') -le $(ls -l example.txt | awk '{print $5}') ]]; then
    exit 1
fi