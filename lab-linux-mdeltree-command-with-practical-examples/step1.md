# Understanding the mdeltree Command

In this step, we will explore the `mdeltree` command in Linux, which is a powerful tool for recursively removing directories and handling symbolic links and permissions.

The `mdeltree` command is a custom script that extends the functionality of the standard `rm -rf` command. It provides additional features and safeguards to ensure a more controlled and secure directory deletion process.

Let's start by understanding the basic usage of the `mdeltree` command:

```bash
sudo mdeltree [directory]
```

The `mdeltree` command takes a directory path as an argument and recursively removes the specified directory and all its contents.

Example output:

```
$ sudo mdeltree ~/project/test_dir
Removing directory: /home/labex/project/test_dir
```

The `mdeltree` command provides several options to customize its behavior, such as:

- `-v`: Verbose mode, which displays detailed information about the deletion process.
- `-f`: Force mode, which removes directories without prompting for confirmation.
- `-l`: Follow symbolic links and remove the linked files/directories.
- `-p`: Preserve permissions and ownership of the deleted files/directories.

You can explore these options by running `man mdeltree` in the terminal.
