#!/bin/bash
battery_status=$(acpi -b)
if ! echo "$battery_status" | grep -q "Discharging\|Charging\|Full"
then
    echo "The battery status output does not contain the expected information."
    exit 1
fi