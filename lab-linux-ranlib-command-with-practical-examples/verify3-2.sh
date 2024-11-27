#!/bin/bash
if ar -t libmylib.a | grep -q "mylib.o"; then
    exit 0
else
    echo "The static library does not contain the expected object file `mylib.o`."
    exit 1
fi