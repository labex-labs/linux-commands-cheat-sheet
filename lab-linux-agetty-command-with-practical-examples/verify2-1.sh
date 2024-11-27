#!/bin/bash
if systemctl is-active serial-getty@ttyS0.service; then
    exit 0
else
    echo "serial-getty service is not active"
    exit 1
fi