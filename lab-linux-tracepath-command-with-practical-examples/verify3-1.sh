#!/bin/bash
if ! sudo iptables -A OUTPUT -d 8.8.8.8 -j DROP; then
  exit 1
fi
if ! sudo tracepath 8.8.8.8 | grep -q "no reply"; then
  sudo iptables -D OUTPUT -d 8.8.8.8 -j DROP
  exit 1
fi
sudo iptables -D OUTPUT -d 8.8.8.8 -j DROP