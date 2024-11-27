#!/bin/bash
HOST_ID=$(hostid)
LICENSE_KEY="ABC123-$HOST_ID-XYZ456"
if [[ "$LICENSE_KEY" == *"$HOST_ID"* ]]; then
  echo "The license key was generated correctly."
  exit 0
else
  echo "The license key was not generated correctly."
  exit 1
fi