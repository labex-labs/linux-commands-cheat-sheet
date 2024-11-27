#!/bin/bash
if ! traceroute www.google.com | grep -q "www.google.com"
then
    echo "The traceroute to www.google.com was not successful."
    exit 1
else
    echo "The traceroute to www.google.com was successful."
    exit 0
fi