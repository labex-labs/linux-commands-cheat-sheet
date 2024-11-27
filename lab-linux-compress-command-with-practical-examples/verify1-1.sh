#!/bin/bash
if [[ $(compress --version | grep -o -E '[0-9]+\.[0-9]+\.[0-9]+') != "4.3.1" ]]; then
    exit 1
fi