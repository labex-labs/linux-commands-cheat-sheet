#!/bin/bash
arp_output=$(arp -a)
if [[ ! $arp_output == *"192.168.1.1"* && ! $arp_output == *"192.168.1.200"* && $arp_output == *"192.168.1.250"* ]]; then
  exit 0
else
  echo "The arp cache management did not work as expected."
  exit 1
fi