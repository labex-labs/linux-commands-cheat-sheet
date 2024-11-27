#!/bin/bash
if ! [ -f /etc/acpi/custom.sh ]
then
    echo "The custom acpi configuration file /etc/acpi/custom.sh does not exist."
    exit 1
fi
if ! grep -q "Battery: \[0-9]\+%" /etc/acpi/custom.sh
then
    echo "The custom acpi configuration file does not contain the expected battery status format."
    exit 1
fi