#!/bin/bash
if ! sudo emerge --version | grep -q "Portage"; then
  exit 1
fi