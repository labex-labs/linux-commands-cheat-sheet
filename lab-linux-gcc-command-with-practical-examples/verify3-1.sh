#!/bin/bash
for opt_level in 0 1 2 3; do
  exe_name="hello_opt$opt_level"
  if [ -f ~/project/simple-c-program/$exe_name ]; then
    ./$exe_name | grep "Hello, World!"
    if [ $? -ne 0 ]; then
      echo "Error: Program with optimization level -O$opt_level did not output 'Hello, World!'"
      exit 1
    fi
  else
    echo "Error: Executable $exe_name not found"
    exit 1
  fi
done
exit 0