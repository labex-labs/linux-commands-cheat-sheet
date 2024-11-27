#!/bin/bash
if ! sudo route -n | grep "0.0.0.0.*10.0.0.1"; then
  exit 1
fi