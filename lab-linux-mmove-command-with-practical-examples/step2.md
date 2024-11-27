# Move Files and Directories Using mmove

In this step, you will learn how to use the `mmove` command to move files and directories within your file system.

Let's start by moving a file:

```
# Move a file to a different directory
mmove file.txt ~/documents/new_folder/

# Example output:
file.txt -> ~/documents/new_folder/file.txt
```

In the above example, we move the `file.txt` file from the current directory to the `~/documents/new_folder/` directory.

Next, let's try moving a directory:

```
# Move a directory to a new location
mmove ~/projects/old_project ~/projects/new_project/

# Example output:
~/projects/old_project/ -> ~/projects/new_project/old_project/
```

Here, we move the `old_project` directory from `~/projects/` to the `~/projects/new_project/` directory.

Now, let's explore some advanced `mmove` options:

```
# Move a file and preserve the modification time
mmove -a file.txt ~/documents/new_folder/

# Example output:
file.txt -> ~/documents/new_folder/file.txt

# Move a directory recursively
mmove -r ~/projects/old_project ~/projects/new_project/

# Example output:
~/projects/old_project/ -> ~/projects/new_project/old_project/
```

The `-a` option preserves the modification time of the file during the move operation. The `-r` option allows you to move a directory and its contents recursively.

Remember, the `mmove` command is a powerful tool for managing your file system. Use it wisely to keep your files and directories organized.
