#!/bin/bash
if ! sudo repquota -u user1 | grep -q "user1" || ! sudo repquota -u user1 | grep -q "75000" || ! sudo repquota -u user1 | grep -q "150000"; then
    exit 1
fi
if ! sudo repquota -u user2 | grep -q "user2" || ! sudo repquota -u user2 | grep -q "100000" || ! sudo repquota -u user2 | grep -q "200000"; then
    exit 1
fi