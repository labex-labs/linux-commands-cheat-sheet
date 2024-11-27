#!/bin/bash
if ! command -v mtoolstest &> /dev/null; then
    echo "mtoolstest command not found. Please install the mtools package."
    exit 1
else
    echo "mtoolstest command found. Installation verified."
    exit 0
fi