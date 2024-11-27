#!/bin/bash

# Start a background process
sleep 60 &

# View background processes
jobs

# Suspend a background process
kill -STOP %1

# Resume a suspended process
kill -CONT %1

# Terminate a background process
kill -TERM %1

# Start multiple background processes
sleep 60 &
sleep 120 &

# View background processes
jobs

# Suspend a specific background process
jobs -s