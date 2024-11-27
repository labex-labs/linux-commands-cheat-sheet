#!/bin/bash
if sudo iwconfig wlan0 | grep -q "ESSID:\"my_wireless_network\"" && \
   sudo iwconfig wlan0 | grep -q "Frequency:2.412 GHz" && \
   sudo iwconfig wlan0 | grep -q "Bit Rate=54 Mb/s"; then
  exit 0
else
  echo "The wireless network interface was not configured correctly."
  exit 1
fi