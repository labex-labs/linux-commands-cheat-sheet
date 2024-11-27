#!/bin/bash

# Check if the user can correctly identify the file type
read -p "Enter a file extension: " file_ext

case "$file_ext" in
  "txt")
    if ! grep -q "text document" ~/.zsh_history; then
      exit 1
    fi
    ;;
  "pdf")
    if ! grep -q "PDF document" ~/.zsh_history; then
      exit 1
    fi
    ;;
  "jpg" | "png" | "gif")
    if ! grep -q "image" ~/.zsh_history; then
      exit 1
    fi
    ;;
  *)
    if ! grep -q "Unsupported file type" ~/.zsh_history; then
      exit 1
    fi
    ;;
esac

exit 0