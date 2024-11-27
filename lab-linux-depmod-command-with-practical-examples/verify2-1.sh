#!/bin/bash
if sudo depmod -n -a | grep -q "kernel/drivers/acpi/acpi_power_meter.ko"; then
    exit 0
else
    echo "The dependency tree for the acpi_power_meter module was not found. Please check the output of the depmod -n -a command."
    exit 1
fi