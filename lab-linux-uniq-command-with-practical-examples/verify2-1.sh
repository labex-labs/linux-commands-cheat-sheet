#!/bin/bash
if ! diff <(sort sample.txt | uniq) <(echo -e "apple\nbanana\norange"); then
    exit 1
fi