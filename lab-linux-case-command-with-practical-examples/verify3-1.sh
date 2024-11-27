#!/bin/bash

# Check if the backup files were created correctly
for file in *.bak; do
  base_file="${file%.bak}"
  if [ ! -f "$base_file" ]; then
    exit 1
  fi
done

# Check if the script correctly identified the file types
if ! grep -q "Backing up text file:" ~/.zsh_history; then
  exit 1
fi

if ! grep -q "Backing up PDF file:" ~/.zsh_history; then
  exit 1
fi

if ! grep -q "Backing up image file:" ~/.zsh_history; then
  exit 1
fi

if ! grep -q "Backing up document file:" ~/.zsh_history; then
  exit 1
fi

if ! grep -q "Skipping unsupported file type:" ~/.zsh_history; then
  exit 1
fi

exit 0