#!/bin/bash
if [ "$(id -gn)" != "developers" ]; then
    exit 1
fi