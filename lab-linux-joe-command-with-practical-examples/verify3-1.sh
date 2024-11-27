#!/bin/bash
if ! grep -q "set tabsize 4" ~/.joerc; then
    echo "The custom tab size setting was not applied."
    exit 1
fi
if ! grep -q "set syntax on" ~/.joerc; then
    echo "The custom syntax highlighting setting was not applied."
    exit 1
fi
if ! grep -q "set fileencoding utf8" ~/.joerc; then
    echo "The custom file encoding setting was not applied."
    exit 1
fi
if ! grep -q "set linenumbers on" ~/.joerc; then
    echo "The custom line numbers setting was not applied."
    exit 1
fi
if ! grep -q "colorscheme dark" ~/.joerc; then
    echo "The custom color scheme setting was not applied."
    exit 1
fi
echo "The custom joe text editor settings were applied successfully."
exit 0