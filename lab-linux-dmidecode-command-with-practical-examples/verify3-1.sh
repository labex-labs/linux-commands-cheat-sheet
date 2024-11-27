#!/bin/bash
if sudo dmidecode -t bios | grep -q "Phoenix Technologies LTD"
then
    echo "BIOS information displayed correctly"
    exit 0
else
    echo "BIOS information not displayed correctly"
    exit 1
fi