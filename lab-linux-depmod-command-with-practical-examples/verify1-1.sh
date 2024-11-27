#!/bin/bash
if [ -f /lib/modules/5.15.0-1023-aws/modules.dep ]; then
    exit 0
else
    echo "The modules.dep file was not generated. Please run the depmod command."
    exit 1
fi