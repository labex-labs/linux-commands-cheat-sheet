# Understand the Basic Usage of ls Command

In this step, you will learn the basic usage of the `ls` command in Linux. The `ls` command is used to list the contents of a directory. It provides information about files and directories, such as their names, permissions, ownership, and more.

Let's start by running the basic `ls` command in the `~/project` directory:

```bash
ls
```

Example output:

```
file1.txt  file2.txt  folder1  folder2
```

The output shows the files and directories present in the current directory.

You can also use the `ls` command with various options to get more detailed information. For example, the `-l` option displays the long-format listing, which includes additional details about each file and directory:

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

The long-format listing provides information such as file permissions, owner, group, file size, and modification time.

Another useful option is `-a`, which displays all files, including hidden files (files starting with a dot):

```bash
ls -a
```

Example output:

```
.  ..  .hidden_file  file1.txt  file2.txt  folder1  folder2
```

You can combine multiple options, such as `-l` and `-a`, to get both long-format and hidden file listings:

```bash
ls -la
```

Example output:

```
total 16
drwxr-xr-x 4 labex labex 4096 Apr 12 12:34 .
drwxr-xr-x 4 labex labex 4096 Apr 12 12:34 ..
-rw-r--r-- 1 labex labex    0 Apr 12 12:34 .hidden_file
-rw-r--r-- 1 labex labex    0 Apr 12 12:34 file1.txt
-rw-r--r-- 1 labex labex    0 Apr 12 12:34 file2.txt
drwxr-xr-x 2 labex labex 4096 Apr 12 12:34 folder1
drwxr-xr-x 2 labex labex 4096 Apr 12 12:34 folder2
```

In the next step, you will explore more advanced `ls` command options to retrieve detailed file information.
