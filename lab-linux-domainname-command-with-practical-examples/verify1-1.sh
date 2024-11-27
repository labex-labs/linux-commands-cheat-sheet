#!/bin/bash
if [ "$(domainname)" == "example.com" ]; then
  exit 0
else
  echo "The domain name is not set to 'example.com'"
  exit 1
fi