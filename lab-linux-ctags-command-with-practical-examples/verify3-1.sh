#!/bin/bash
if ! grep -q "main	main.c	/^int main() {$/;\"	f" ~/project/myproject/tags; then
    echo "Main function not found in tags file"
    exit 1
else
    echo "Main function found in tags file"
    exit 0
fi