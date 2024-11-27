# Navigate and Edit Text in vi

In this step, you will learn how to navigate and edit text within the vi editor.

First, let's open the vi editor by running the following command in the terminal:

```
vi
```

Now, let's explore some commands for navigating and editing text in vi:

1. **Moving the Cursor**:

   - Use the arrow keys (up, down, left, right) to move the cursor.
   - Press `h` to move the cursor left, `j` to move down, `k` to move up, and `l` to move right.
   - Press `w` to move the cursor to the beginning of the next word, and `b` to move the cursor to the beginning of the previous word.
   - Press `0` to move the cursor to the beginning of the current line, and `$` to move the cursor to the end of the current line.

2. **Editing Text**:
   - Press `i` to enter the insert mode and start typing.
   - Press `x` to delete the character under the cursor.
   - Press `dd` to delete the entire line.
   - Press `yy` to copy the current line.
   - Press `p` to paste the copied text.

Example output:

```
# Open vi editor
$ vi

# Navigate using arrow keys, 'h', 'j', 'k', 'l'
# Move to next/previous word using 'w', 'b'
# Move to start/end of line using '0', '$'

# Enter insert mode and start typing
# Delete character using 'x'
# Delete line using 'dd'
# Copy line using 'yy'
# Paste using 'p'
```
