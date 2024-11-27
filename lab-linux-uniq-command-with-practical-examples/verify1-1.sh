#!/bin/bash
if ! diff <(uniq sample.txt) <(echo -e "apple\norange\nbanana"); then
    exit 1
fi