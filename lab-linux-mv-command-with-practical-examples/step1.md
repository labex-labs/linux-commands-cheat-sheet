# Understand the mv Command Syntax

In this step, you will learn the basic syntax and usage of the `mv` command in Linux. The `mv` command is used to move or rename files and directories.

The basic syntax of the `mv` command is:

```
mv [options] source destination
```

Here, `source` is the file or directory you want to move, and `destination` is the new location or new name for the file or directory.

Some common options for the `mv` command include:

- `-i`: Interactive mode, prompts before overwriting
- `-f`: Force mode, overwrites without prompting
- `-v`: Verbose mode, shows the details of the move operation

Let's try some examples:

```
# Rename a file
mv file1.txt file2.txt

# Example output:
# No output, the file is renamed

# Move a file to a new directory
mv file1.txt ~/project/new_dir/

# Example output:
# No output, the file is moved

# Move multiple files to a new directory
mv file1.txt file2.txt file3.txt ~/project/new_dir/

# Example output:
# No output, the files are moved
```

In the above examples, we used the `mv` command to rename a file, move a file to a new directory, and move multiple files to a new directory.
