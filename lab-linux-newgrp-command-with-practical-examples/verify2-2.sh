#!/bin/bash
if [ "$(id -gn)" != "project-team" ]; then
    exit 1
fi