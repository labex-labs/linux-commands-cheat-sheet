# Manage Directories with dir Command

In this final step, we will explore how to use the `dir` command to manage directories.

First, let's create a new directory:

```bash
dir -p ~/project/new_directory
```

Example output:

```
~/project/new_directory
```

The `-p` option ensures that the parent directories are created if they don't already exist.

You can also use the `dir` command to remove directories:

```bash
dir -d ~/project/new_directory
```

Example output:

```
~/project/new_directory
```

The `-d` option tells `dir` to remove the specified directory.

To remove a directory and its contents recursively, you can use the following command:

```bash
dir -rf ~/project/new_directory
```

Example output:

```
~/project/new_directory
```

The `-r` option makes the removal recursive, and the `-f` option forces the removal without prompting for confirmation.

Finally, you can use the `dir` command to change the current working directory:

```bash
dir ~/Documents
```

Example output:

```
~/Documents
```

This changes the current working directory to `~/Documents`.

By combining the various options of the `dir` command, you can effectively manage directories and navigate the file system.
