#!/bin/bash
if ! sudo emerge --update --deep --newuse @world | grep -q "Total:"; then
  exit 1
fi