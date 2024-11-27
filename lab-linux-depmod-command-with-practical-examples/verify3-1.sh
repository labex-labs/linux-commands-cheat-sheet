#!/bin/bash
if dmesg | grep -q "Hello Dependent Module!"; then
    exit 0
else
    echo "The hello_dependent module was not loaded successfully. Please check the module dependencies and try again."
    exit 1
fi