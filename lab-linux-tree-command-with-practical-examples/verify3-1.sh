#!/bin/bash
if ! tree ~/project/documents | grep -q "reports"
then
    echo "The tree command did not display the 'reports' directory correctly."
    exit 1
else
    echo "The tree command displayed the 'reports' directory correctly."
    exit 0
fi