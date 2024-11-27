#!/bin/bash
if [[ -x hello ]]; then
    exit 0
else
    echo "The hello executable was not created. Please check your Makefile and try again."
    exit 1
fi