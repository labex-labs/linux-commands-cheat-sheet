# Retrieve File Metadata Using the stat Command

In this step, you will learn how to use the `stat` command to retrieve detailed metadata about files and directories.

First, let's create a new file in the `~/project` directory:

```bash
touch ~/project/example.txt
```

Now, let's use the `stat` command to retrieve the metadata for this file:

```bash
stat ~/project/example.txt
```

Example output:

```
  File: '/home/labex/project/example.txt'
  Size: 0         	Blocks: 0          IO Block: 4096   regular empty file
Device: 801h/2049d	Inode: 131075      Links: 1
Access: (0644/-rw-r--r--)  Uid: (1000/labex)   Gid: (1000/labex)
Access: 2023-04-11 12:34:56.789012345 +0000
Modify: 2023-04-11 12:34:56.789012345 +0000
Change: 2023-04-11 12:34:56.789012345 +0000
 Birth: -
```

This output provides a wealth of information about the file, including:

- The file path and name
- The file size and block size
- The device and inode numbers
- The file permissions, owner, and group
- The access, modification, and change timestamps

You can also use the `-c` or `--format` option to customize the output format of the `stat` command. For example, to display only the file size and modification time, you can use:

```bash
stat -c '%s %y' ~/project/example.txt
```

Example output:

```
0 2023-04-11 12:34:56.789012345 +0000
```

This allows you to extract specific metadata fields that are most relevant to your needs.
