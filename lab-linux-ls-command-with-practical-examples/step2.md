# Explore ls Command Options for Detailed File Information

In this step, you will explore more advanced options of the `ls` command to retrieve detailed information about files and directories.

Let's start by using the `-l` (long format) option to display additional details about the files and directories:

```bash
ls -l
```

Example output:

```
total 8
-rw-r--r-- 1 labex labex 0 Apr 12 12:34 file1.txt
-rw-r--r-- 1 labex labex 0 Apr 12 12:34 file2.txt
drwxr-xr-x 2 labex labex 4096 Apr 12 12:34 folder1
drwxr-xr-x 2 labex labex 4096 Apr 12 12:34 folder2
```

The long-format listing provides the following information for each file and directory:

- File permissions
- Number of hard links
- Owner
- Group
- File size
- Modification time
- Filename

You can also use the `-h` (human-readable) option to display file sizes in a more readable format:

```bash
ls -lh
```

Example output:

```
total 8.0K
-rw-r--r-- 1 labex labex 0 Apr 12 12:34 file1.txt
-rw-r--r-- 1 labex labex 0 Apr 12 12:34 file2.txt
drwxr-xr-x 2 labex labex 4.0K Apr 12 12:34 folder1
drwxr-xr-x 2 labex labex 4.0K Apr 12 12:34 folder2
```

The file sizes are now displayed in a human-readable format (e.g., 4.0K instead of 4096).

To list files in reverse order, you can use the `-r` (reverse) option:

```bash
ls -lr
```

Example output:

```
total 8
drwxr-xr-x 2 labex labex 4096 Apr 12 12:34 folder2
drwxr-xr-x 2 labex labex 4096 Apr 12 12:34 folder1
-rw-r--r-- 1 labex labex 0 Apr 12 12:34 file2.txt
-rw-r--r-- 1 labex labex 0 Apr 12 12:34 file1.txt
```

The files and directories are now listed in reverse order.

You can also combine multiple options to get the desired output. For example, to list all files (including hidden files) in long format and reverse order:

```bash
ls -alr
```

Example output:

```
total 16
drwxr-xr-x 4 labex labex 4096 Apr 12 12:34 ..
drwxr-xr-x 4 labex labex 4096 Apr 12 12:34 .
-rw-r--r-- 1 labex labex 0 Apr 12 12:34 .hidden_file
drwxr-xr-x 2 labex labex 4096 Apr 12 12:34 folder2
drwxr-xr-x 2 labex labex 4096 Apr 12 12:34 folder1
-rw-r--r-- 1 labex labex 0 Apr 12 12:34 file2.txt
-rw-r--r-- 1 labex labex 0 Apr 12 12:34 file1.txt
```

In the next step, you will learn how to utilize the `ls` command for navigating directory structures.
