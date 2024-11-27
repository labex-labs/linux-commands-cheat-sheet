#!/bin/bash
if sudo crontab -l | grep -q "wall"; then
    exit 0
else
    exit 1
fi