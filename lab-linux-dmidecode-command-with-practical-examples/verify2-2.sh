#!/bin/bash
if sudo dmidecode -t processor | grep -q "VMware, Inc."
then
    echo "Processor information displayed correctly"
    exit 0
else
    echo "Processor information not displayed correctly"
    exit 1
fi