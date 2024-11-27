#!/bin/bash

# Terminate Processes by Process Name
sleep 1000 &
firefox &
gedit &

sudo pkill -f sleep
sudo pkill -f firefox
sudo pkill -f gedit