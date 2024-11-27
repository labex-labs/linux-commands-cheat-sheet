#!/bin/bash
if ! sudo mkfs.types | grep -q "ext4"; then
    exit 1
fi