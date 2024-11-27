#!/bin/bash
if sudo dmidecode -t slot | grep -q "PCI Slot"
then
    echo "Slot information displayed correctly"
    exit 0
else
    echo "Slot information not displayed correctly"
    exit 1
fi