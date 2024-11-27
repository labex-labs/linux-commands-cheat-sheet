#!/bin/bash
if [ ! -d "~/project/myproject" ]; then
    echo "Project not checked out. Please check out the project first."
    exit 1
else
    echo "Project checked out successfully."
    exit 0
fi