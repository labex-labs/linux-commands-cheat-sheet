# Recursive Ownership Change with chown -R

In this final step, we will learn how to recursively change the ownership of files and directories using the `chown` command with the `-R` option.

First, let's create a new directory structure with some files and subdirectories:

```bash
mkdir -p ~/project/dir2/subdir1
touch ~/project/dir2/file1.txt
touch ~/project/dir2/subdir1/file2.txt
```

Now, let's check the ownership of the files and directories:

```bash
ls -l ~/project/dir2
```

Example output:

```
total 0
-rw-r--r-- 1 labex labex 0 Apr 24 12:34 file1.txt
drwxr-xr-x 2 labex labex 4096 Apr 24 12:34 subdir1
```

As you can see, the files and directories are owned by the `labex` user and the `labex` group.

To change the ownership of the entire `dir2` directory and its contents recursively, we can use the `chown` command with the `-R` option:

```bash
sudo chown -R user3:group3 ~/project/dir2
ls -l ~/project/dir2
```

Example output:

```
total 0
-rw-r--r-- 1 user3 group3 0 Apr 24 12:34 file1.txt
drwxr-xr-x 2 user3 group3 4096 Apr 24 12:34 subdir1
```

The output shows that the ownership of the `dir2` directory and its contents has been changed to the `user3` user and the `group3` group.

The `-R` option in the `chown` command ensures that the ownership change is applied recursively to all files and directories within the specified path. This is particularly useful when you need to change the ownership of an entire directory structure, rather than individual files or directories.

Remember, you need to have the appropriate permissions to change the ownership of files and directories. If you're not the owner or don't have the necessary privileges, you'll need to use the `sudo` command to execute the `chown` operation.
