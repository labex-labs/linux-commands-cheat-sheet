#!/bin/bash
if [ "$(domainname)" == "mycompany.com" ]; then
  exit 0
else
  echo "The domain name is not reverted to the original setting 'mycompany.com'"
  exit 1
fi