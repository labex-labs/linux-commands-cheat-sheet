#!/bin/bash

# Check and set dircolors configuration
if [ -f ~/.dircolors ]; then
    dircolors ~/.dircolors
else
    dircolors /etc/DIR_COLORS > ~/.dircolors
    dircolors ~/.dircolors
fi