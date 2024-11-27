# Understand the mmove Command

In this step, you will learn about the Linux `mmove` command, which is used to move files and directories. The `mmove` command is a powerful tool that allows you to easily relocate files and directories within your file system.

First, let's explore the basic syntax of the `mmove` command:

```
mmove [options] source_file/directory target_file/directory
```

The `source_file/directory` is the file or directory you want to move, and the `target_file/directory` is the destination where you want to move it.

Some common options for the `mmove` command include:

- `-i`: Prompts before overwriting an existing file
- `-f`: Forces the move operation, overwriting existing files without prompting
- `-v`: Displays verbose output, showing the files as they are moved
- `-u`: Updates the file, only moving the file if the source file is newer than the destination file

Let's try some examples to better understand the `mmove` command:

```
# Move a file
mmove file.txt ~/documents/

# Example output:
file.txt -> ~/documents/file.txt

# Move a directory
mmove ~/projects/old_project ~/projects/new_project/

# Example output:
~/projects/old_project/ -> ~/projects/new_project/old_project/
```

In the first example, we move the file `file.txt` to the `~/documents/` directory. In the second example, we move the `old_project` directory to the `new_project` directory.

The `mmove` command is a versatile tool that can help you efficiently manage your file system. In the next step, you will learn how to use `mmove` to move files and directories with more advanced options.
