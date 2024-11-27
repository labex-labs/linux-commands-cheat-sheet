#!/bin/bash
if grep -q "(set-face-attribute 'default nil :height 140)" ~/.emacs; then
    echo "Font size customization verified"
else
    echo "Font size customization not found in .emacs"
    exit 1
fi

if grep -q "(global-display-line-numbers-mode)" ~/.emacs; then
    echo "Line numbers customization verified"
else
    echo "Line numbers customization not found in .emacs"
    exit 1
fi

emacs -Q --batch -l ~/.emacs --eval '(if (not (eq (face-attribute 'default :height) 140)) (exit 1))'
if [ $? -eq 0 ]; then
    echo "Font size change verified in emacs"
else
    echo "Font size change not applied in emacs"
    exit 1
fi

emacs -Q --batch -l ~/.emacs --eval '(if (not global-display-line-numbers-mode) (exit 1))'
if [ $? -eq 0 ]; then
    echo "Line numbers enabled verified in emacs"
else
    echo "Line numbers not enabled in emacs"
    exit 1
fi

echo "Emacs customization verified"
exit 0