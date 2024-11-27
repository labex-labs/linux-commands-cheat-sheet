#!/bin/bash
sudo modprobe vboxguest
if sudo lsmod | grep -q 'vboxguest'; then
  sudo modprobe -r vboxguest
  if ! sudo lsmod | grep -q 'vboxguest'; then
    exit 0
  else
    echo "Failed to unload the vboxguest kernel module."
    exit 1
  fi
else
  echo "Failed to load the vboxguest kernel module."
  exit 1
fi