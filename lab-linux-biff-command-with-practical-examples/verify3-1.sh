#!/bin/bash
touch ~/project/new_mail.txt
if grep -q "You have 1 new message(s)!" ~/.zsh_history; then
  rm ~/project/new_mail.txt
  exit 0
else
  rm ~/project/new_mail.txt
  exit 1
fi