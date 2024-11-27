#!/bin/bash
if [ "$(env MY_MESSAGE="Hello" MY_NAME="John" echo "$MY_MESSAGE, my name is $MY_NAME!")" != "Hello, my name is John!" ]; then
  exit 1
fi