#!/bin/bash
if ! sudo mount /dev/fd0 /mnt && sudo ls /mnt; then
  exit 1
fi