#!/bin/bash
if ! mcopy -a ~/project/source_dir/file1.txt a: &> /dev/null; then
  exit 1
fi
if ! mcopy -M ~/project/source_dir/file2.txt a: &> /dev/null; then
  exit 1
fi
if ! mcopy -D destination_dir ~/project/source_dir/file1.txt a: &> /dev/null; then
  exit 1
fi
if ! mcopy ~/project/source_dir/*.txt a: &> /dev/null; then
  exit 1
fi