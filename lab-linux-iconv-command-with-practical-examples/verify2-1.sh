#!/bin/bash
if ! diff <(echo "こんにちは世界") <(iconv -f UTF-8 -t ISO-8859-1 ~/project/utf8.txt); then
    exit 1
fi