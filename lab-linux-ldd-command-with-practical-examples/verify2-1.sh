#!/bin/bash
if ldd hello | grep "libmylib.so => not found"; then
    exit 0
else
    exit 1
fi