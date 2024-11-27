# Basic jed Commands and Navigation

In this step, we will explore some basic jed commands and navigation techniques to help you become more productive with the jed text editor.

First, let's review some of the key commands we learned in the previous step:

- `Ctrl+X` to exit the jed editor, then `y` to save changes or `n` to discard
- `Ctrl+N` or `↓` to move down, `Ctrl+P` or `↑` to move up
- `Ctrl+F` or `→` to move right, `Ctrl+B` or `←` to move left
- `Ctrl+X` then `s` to save the current file
- `Ctrl+S` to search for text within the file
- `Ctrl+Q` then `r` to replace text

Now, let's dive into some additional jed commands and navigation:

- To move to the beginning of the current line, press `Ctrl+A`.
- To move to the end of the current line, press `Ctrl+E`.
- To delete the current line, press `Ctrl+K`.
- To copy the current line, press `Ctrl+Y`, then move the cursor and press `Ctrl+U` to paste.
- To indent the current line, press `Ctrl+T`.
- To unindent the current line, press `Ctrl+D`.
- To open a new file, press `Ctrl+X` then `Ctrl+F`.
- To switch between open files, press `Ctrl+X` then `b`.

Example usage:

```bash
jed example.txt
# Move to the beginning of the line: Ctrl+A
# Delete the current line: Ctrl+K
# Copy the current line: Ctrl+Y, then move and Ctrl+U to paste
# Indent the current line: Ctrl+T
# Switch to a different open file: Ctrl+X then b
```

Remember, you can always press `Ctrl+X` then `?` to see a list of all available jed commands and their corresponding key bindings.
