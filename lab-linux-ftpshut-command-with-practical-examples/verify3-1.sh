#!/bin/bash
if ! sudo ftpwho | grep -q "Shutdown time has been set to"; then
    exit 1
fi