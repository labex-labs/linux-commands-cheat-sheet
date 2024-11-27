#!/bin/bash
if [ "$(pwd)" = "/home/labex/project/subdirectory" ]; then
    cd ..
    if [ "$(pwd)" = "/home/labex/project" ]; then
        cd /
        if [ "$(pwd)" = "/" ]; then
            exit 0
        else
            echo "Failed to navigate to the root directory"
            exit 1
        fi
    else
        echo "Failed to navigate to the parent directory"
        exit 1
    fi
else
    echo "Failed to navigate to the subdirectory"
    exit 1
fi