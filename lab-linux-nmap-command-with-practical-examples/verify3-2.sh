#!/bin/bash
if [ ! -f nmap_results.nmap ]; then
    echo "Scan results not saved. Please run the scan with output saving command."
    exit 1
else
    echo "Scan results saved successfully."
    exit 0
fi