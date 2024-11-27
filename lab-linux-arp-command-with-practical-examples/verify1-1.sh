#!/bin/bash
arp_output=$(arp -a)
if [[ $arp_output == *"192.168.1.1"* && $arp_output == *"192.168.1.100"* ]]; then
  exit 0
else
  echo "The arp command did not display the expected output."
  exit 1
fi