#!/bin/bash

# Check if acpi is installed
if ! command -v acpi &> /dev/null
then
    sudo apt-get update
    sudo apt-get install -y acpi
fi

# Check battery status
acpi -b
acpi -i