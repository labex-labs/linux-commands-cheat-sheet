#!/bin/bash
if [ -f ~/project/example.tab.c ] && [ -f ~/project/example.tab.h ] && [ -f ~/project/example.lex.c ] && [ -f ~/project/example ]; then
  echo "Parser files generated successfully"
else
  echo "Parser files not found"
  exit 1
fi

if ./example <<< "123" | grep -q "Received number: 123"; then
  echo "Parser works correctly"
else
  echo "Parser does not work as expected"
  exit 1
fi