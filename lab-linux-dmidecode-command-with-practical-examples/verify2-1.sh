#!/bin/bash
if sudo dmidecode -t system | grep -q "VMware, Inc."
then
    echo "System information displayed correctly"
    exit 0
else
    echo "System information not displayed correctly"
    exit 1
fi