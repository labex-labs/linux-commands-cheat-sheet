#!/bin/bash
if cat files.txt | xargs md5sum | grep -q "e10adc3949ba59abbe56e057f20f883e"; then
  exit 0
else
  echo "MD5 checksum verification failed."
  exit 1
fi