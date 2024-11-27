#!/bin/bash
if ! sudo grpck | grep -q "no errors found"
then
    exit 1
fi