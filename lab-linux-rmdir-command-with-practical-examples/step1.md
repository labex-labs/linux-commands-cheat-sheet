# Understand the rmdir Command

In this step, you will learn about the `rmdir` command in Linux, which is used to remove empty directories. The `rmdir` command is a powerful tool for managing directories in the file system.

The basic syntax for the `rmdir` command is:

```
rmdir [options] directory
```

Here, `[options]` are the optional flags you can use with the `rmdir` command, and `directory` is the name of the directory you want to remove.

Some common options for the `rmdir` command include:

- `-p`: Remove the directory and its parent directories if they are empty.
- `-v`: Display a message for each directory removed.

Let's try some examples to understand the `rmdir` command better.

Example 1: Remove an empty directory

```
mkdir empty_dir
rmdir empty_dir
Example output:
```

Example 2: Try to remove a non-empty directory

```
mkdir non_empty_dir
touch non_empty_dir/file.txt
rmdir non_empty_dir
Example output:
rmdir: failed to remove 'non_empty_dir': Directory not empty
```

As you can see, the `rmdir` command cannot remove a non-empty directory. In this case, you need to either remove the files inside the directory first or use the `rm -r` command to recursively remove the directory and its contents.
