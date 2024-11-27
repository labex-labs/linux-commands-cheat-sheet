#!/bin/bash
if [[ $(compress -c example.txt) != "This is a sample text file." ]]; then
    exit 1
fi