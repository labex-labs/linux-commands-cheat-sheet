#!/bin/bash
if sudo uucico -r1 -ssystem -l ~/project/test_file.txt -r ~/project/test_file.txt | grep -q "Sending ~/project/test_file.txt to /home/remote_user/uucp/test_file.txt"; then
  exit 0
else
  exit 1
fi