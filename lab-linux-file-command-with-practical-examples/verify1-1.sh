#!/bin/bash
if ! file README.md | grep -q 'Markdown document'; then
  exit 1
fi
if ! file Dockerfile | grep -q 'ASCII text'; then
  exit 1
fi
if ! file example.zip | grep -q 'Zip archive'; then
  exit 1
fi
if ! file example.txt | grep -q 'ASCII text'; then
  exit 1
fi
exit 0