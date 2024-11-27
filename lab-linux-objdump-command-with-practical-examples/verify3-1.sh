#!/bin/bash
if grep -q "Disassembly of section .text" ~/.zsh_history; then
  if grep -q "mov \$0x0,%edi" ~/.zsh_history; then
    if grep -q "callq  f20 <puts@plt>" ~/.zsh_history; then
      if grep -q "mov \$0x0,%eax" ~/.zsh_history; then
        exit 0
      else
        echo "The instruction 'mov \$0x0,%eax' was not identified in the objdump output."
        exit 1
      fi
    else
      echo "The 'callq  f20 <puts@plt>' instruction was not identified in the objdump output."
      exit 1
    fi
  else
    echo "The 'mov \$0x0,%edi' instruction was not identified in the objdump output."
    exit 1
  fi
else
  echo "The 'Disassembly of section .text' output was not displayed."
  exit 1
fi