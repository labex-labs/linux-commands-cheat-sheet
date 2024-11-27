#!/bin/bash
if grep -q "Disassembly of section .text" ~/.zsh_history; then
  if grep -q "objdump -t hello" ~/.zsh_history; then
    if grep -q "objdump -x hello" ~/.zsh_history; then
      exit 0
    else
      echo "The command 'objdump -x hello' was not executed."
      exit 1
    fi
  else
    echo "The command 'objdump -t hello' was not executed."
    exit 1
  fi
else
  echo "The command 'objdump -dS hello' was not executed."
  exit 1
fi