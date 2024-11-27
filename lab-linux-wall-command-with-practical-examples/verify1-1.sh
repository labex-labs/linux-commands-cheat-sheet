#!/bin/bash
if sudo wall "Test message" | grep -q "Test message"; then
    exit 0
else
    exit 1
fi