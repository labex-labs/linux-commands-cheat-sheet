#!/bin/bash
if ! diff <(cat ~/project/multilingual.txt) <(iconv -f UTF-8 -t ISO-8859-1//TRANSLIT ~/project/multilingual.txt); then
    exit 1
fi