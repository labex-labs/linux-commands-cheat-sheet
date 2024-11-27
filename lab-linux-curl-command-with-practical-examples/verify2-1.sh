#!/bin/bash
if [ -f curl_homepage.html ]; then
  grep -q "curl - transfer data with URL" curl_homepage.html
  exit $?
else
  exit 1
fi