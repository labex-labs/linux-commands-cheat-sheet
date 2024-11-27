#!/bin/bash
if [ ! -f ~/.jedrc ]; then
    echo "The .jedrc configuration file does not exist"
    exit 1
fi

if ! grep -q "set_tab_width(4);" ~/.jedrc; then
    echo "The tab width setting was not found in the .jedrc file"
    exit 1
fi

if ! grep -q "set_line_numbers(1);" ~/.jedrc; then
    echo "The line numbers setting was not found in the .jedrc file"
    exit 1
fi

echo "jed configuration file verified"
exit 0