#!/bin/bash
if [ "$(pwd)" = "/home/labex/project" ]; then
    exit 0
else
    echo "The current working directory is not /home/labex/project"
    exit 1
fi