#!/bin/bash
if ! sudo grep -q "if \[ \"\$(sudo apmd -s | grep -o -E '[0-9]+%')\" = \"20%\" \]; then" /etc/apm/event.d/default.script; then
    exit 1
fi