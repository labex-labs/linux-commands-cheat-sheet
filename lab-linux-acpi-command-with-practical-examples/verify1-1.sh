#!/bin/bash
if ! command -v acpi &> /dev/null
then
    echo "The acpi command is not installed. Please install it using the provided command."
    exit 1
fi