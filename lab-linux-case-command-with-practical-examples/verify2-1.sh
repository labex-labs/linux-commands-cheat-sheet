#!/bin/bash

# Check if the script correctly identifies the file types
if ! grep -q "Text file:" ~/.zsh_history; then
  exit 1
fi

if ! grep -q "PDF file:" ~/.zsh_history; then
  exit 1
fi

if ! grep -q "Image file:" ~/.zsh_history; then
  exit 1
fi

if ! grep -q "Document file:" ~/.zsh_history; then
  exit 1
fi

if ! grep -q "Unsupported file type:" ~/.zsh_history; then
  exit 1
fi

exit 0