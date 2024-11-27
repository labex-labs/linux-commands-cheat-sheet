#!/bin/bash
if sudo dmidecode -t chassis | grep -q "VMware, Inc."
then
    echo "Chassis information displayed correctly"
    exit 0
else
    echo "Chassis information not displayed correctly"
    exit 1
fi