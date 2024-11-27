#!/bin/bash
if ! ipcs | grep -q "labex"; then
    exit 1
fi