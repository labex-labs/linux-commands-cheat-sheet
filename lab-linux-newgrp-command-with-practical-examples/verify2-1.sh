#!/bin/bash
if ! getent group project-team > /dev/null; then
    exit 1
fi