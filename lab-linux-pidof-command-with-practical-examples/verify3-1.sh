#!/bin/bash
NGINX_PIDS=$(pidof nginx)
if [ -z "$NGINX_PIDS" ]; then
    echo "Failed to find any nginx processes using pidof"
    exit 1
fi
echo "Successfully found the following nginx processes using pidof:"
echo "$NGINX_PIDS"
exit 0