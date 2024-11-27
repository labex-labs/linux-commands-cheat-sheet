#!/bin/bash
if ! diff <(echo "こんにちは世界") <(iconv -f UTF-8 -t UTF-16 ~/project/utf8.txt); then
    exit 1
fi