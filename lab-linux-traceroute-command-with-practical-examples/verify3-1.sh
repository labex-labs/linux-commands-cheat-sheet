#!/bin/bash
if traceroute www.non-existent-website.com | grep -q "*"
then
    echo "The traceroute to www.non-existent-website.com was successful in identifying a network issue."
    exit 0
else
    echo "The traceroute to www.non-existent-website.com did not identify any network issues."
    exit 1
fi