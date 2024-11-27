# Changing File Ownership with the chown Command

In this step, you will learn how to use the `chown` command to change the ownership of files and directories in Linux.

By default, when a file or directory is created, it is owned by the user who created it. The `chown` command allows you to change the owner and/or group of a file or directory.

The basic syntax for the `chown` command is:

```
chown [options] owner[:group] file
```

Where `owner` is the new owner username, and `group` is the new group name.

For example, to change the owner of `example.txt` to the `labex` user, you can use:

```
sudo chown labex example.txt
```

To change both the owner and group, you can use:

```
sudo chown labex:labex example.txt
```

You can also use the recursive option `-R` to change the ownership of a directory and all its contents:

```
sudo chown -R labex:labex ~/project
```

This will change the ownership of the `~/project` directory and all files and subdirectories within it to the `labex` user and group.

Let's try changing the ownership of the `example.txt` file:

```
# Change the owner to labex
sudo chown labex example.txt

# Change the owner and group to labex
sudo chown labex:labex example.txt
```

Example output:

```
-rw-r--r-- 1 labex labex 0 Apr 12 12:34 example.txt
```

Now the `example.txt` file is owned by the `labex` user and group.

Understanding how to use the `chown` command is essential for managing file and directory ownership in a Linux system.
