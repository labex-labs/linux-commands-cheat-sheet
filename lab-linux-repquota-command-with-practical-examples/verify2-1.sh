#!/bin/bash
if ! sudo repquota -u testuser | grep -q "testuser"; then
    exit 1
fi
if ! sudo repquota -uv testuser | grep -q "100000" || ! sudo repquota -uv testuser | grep -q "200000"; then
    exit 1
fi