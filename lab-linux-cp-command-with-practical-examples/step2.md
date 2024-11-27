# Copy Files and Directories Using the cp Command

In this step, you will learn how to copy files and directories using the `cp` command, including copying multiple files and directories at once.

Let's start by creating some sample files and directories in the `~/project` directory:

```bash
touch ~/project/file1.txt ~/project/file2.txt
mkdir ~/project/dir1 ~/project/dir2
```

Now, let's copy multiple files at once:

```bash
cp ~/project/file1.txt ~/project/file2.txt ~/project/dir1
```

This will copy `file1.txt` and `file2.txt` to the `dir1` directory.

Example output:

```

```

You can also copy an entire directory and its contents using the `-r` (recursive) option:

```bash
cp -r ~/project/dir1 ~/project/dir3
```

This will create a new directory `dir3` and copy all the contents of `dir1` into it.

Example output:

```

```

If you want to copy a directory and rename it at the same time, you can use the following syntax:

```bash
cp -r ~/project/dir1 ~/project/dir4
```

This will create a new directory `dir4` and copy all the contents of `dir1` into it.

Example output:

```

```

As you can see, the `cp` command provides a flexible way to copy files and directories in Linux. In the next step, you will learn how to preserve file attributes and timestamps when copying files.
