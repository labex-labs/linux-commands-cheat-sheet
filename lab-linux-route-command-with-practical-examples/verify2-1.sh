#!/bin/bash
if ! sudo route -n | grep "192.168.2.0"; then
  exit 1
fi