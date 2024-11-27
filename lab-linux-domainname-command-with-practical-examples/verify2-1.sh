#!/bin/bash
if [ "$(domainname)" == "mycompany.com" ]; then
  exit 0
else
  echo "The domain name is not set to 'mycompany.com'"
  exit 1
fi