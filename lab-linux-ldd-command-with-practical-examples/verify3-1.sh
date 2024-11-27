#!/bin/bash
if ldd hello | grep "libmylib.so => /usr/local/lib/libmylib.so"; then
    exit 0
else
    exit 1
fi