#!/bin/bash
if [ "$(echo -e "\033[1;31mTest\033[0m")" == "Test" ]; then
    exit 0
else
    exit 1
fi