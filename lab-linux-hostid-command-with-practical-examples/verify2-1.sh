#!/bin/bash
HOST_ID=$(hostid)
if [ -n "$HOST_ID" ]; then
  echo "The host ID is: $HOST_ID"
  exit 0
else
  echo "The hostid command did not return a valid identifier."
  exit 1
fi