#!/bin/bash
if sudo dmidecode -t memory | grep -q "VMware Virtual RAM"
then
    echo "Memory information displayed correctly"
    exit 0
else
    echo "Memory information not displayed correctly"
    exit 1
fi