# Perform Advanced Operations in vi

In this final step, you will learn some advanced operations in the vi editor, which will help you become more efficient in text processing and editing.

First, let's open the vi editor by running the following command in the terminal:

```
vi
```

Now, let's explore some advanced commands in vi:

1. **Searching and Replacing**:

   - Press `/` to enter the search mode, then type the word you want to search for and press `Enter`.
   - Press `n` to navigate to the next occurrence of the search term, and `N` to navigate to the previous occurrence.
   - To replace a word, type `:%s/old_word/new_word/g` and press `Enter`. This will replace all occurrences of "old_word" with "new_word" in the entire file.

2. **Working with Multiple Files**:

   - Press `:e filename.txt` to open a new file in the vi editor.
   - Press `:bn` to switch to the next file, and `:bp` to switch to the previous file.
   - Press `:ls` to list all the open files in the vi editor.

3. **Executing Shell Commands**:
   - Press `:!command` to execute a shell command without leaving the vi editor.
   - For example, `:!ls -l` will list the contents of the current directory.

Example output:

```
# Open vi editor
$ vi

# Search for a word using '/'
# Navigate to next/previous occurrence using 'n', 'N'
# Replace a word using ':%s/old_word/new_word/g'

# Open a new file using ':e filename.txt'
# Switch between files using ':bn', ':bp'
# List open files using ':ls'

# Execute shell commands using '!command'
# Example: ':!ls -l'
```
