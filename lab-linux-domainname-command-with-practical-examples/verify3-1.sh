#!/bin/bash
if [ "$(domainname)" == "example.net" ]; then
  exit 0
else
  echo "The domain name for the new interface is not set to 'example.net'"
  exit 1
fi