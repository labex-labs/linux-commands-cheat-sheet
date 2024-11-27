#!/bin/bash
if ! sudo fdisk -l /dev/sda | grep -q "/dev/sda2"; then
  exit 1
fi
if ! sudo fdisk -l /dev/sda | grep -q "10G"; then
  exit 1
fi