#!/bin/bash
if [[ -x ~/project/hello ]]; then
    echo "The hello executable was created successfully."
else
    echo "The hello executable was not created. Please check your Makefile and try again."
    exit 1
fi

if [[ ! -f ~/project/hello ]]; then
    echo "The clean target successfully removed the hello executable."
    exit 0
else
    echo "The clean target did not remove the hello executable. Please check your Makefile clean target."
    exit 1
fi