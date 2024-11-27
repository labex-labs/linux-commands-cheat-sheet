#!/bin/bash
unzip -l encrypted_archive.zip | grep -q "secret_file.txt"
if [ $? -eq 0 ]; then
  unzip -l encrypted_archive.zip | grep -q "important_document.pdf"
  if [ $? -eq 0 ]; then
    exit 0
  else
    echo "The encrypted zip archive 'encrypted_archive.zip' does not contain 'important_document.pdf'."
    exit 1
  fi
else
  echo "The encrypted zip archive 'encrypted_archive.zip' does not contain 'secret_file.txt'."
  exit 1
fi