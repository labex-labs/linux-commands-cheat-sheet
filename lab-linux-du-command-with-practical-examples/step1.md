# Understand the du Command

In this step, you will learn about the `du` (disk usage) command in Linux. The `du` command is used to estimate file space usage, providing information about the disk space occupied by files and directories.

To get started, let's first check the `du` command's help:

```bash
man du
```

The help output will provide you with detailed information about the various options and usage of the `du` command.

Some of the commonly used `du` options include:

- `-h`: Display the output in human-readable format (e.g., 1.2M instead of 1234567)
- `-s`: Display the total size of a directory, instead of the size of each file/directory within it
- `-c`: Display the grand total at the end of the output
- `-x`: Do not cross file system boundaries
- `-d <depth>`: Limit the depth of the directory tree that `du` will display

Now, let's try some examples to understand how to use the `du` command:

```bash
# Display the disk usage of the current directory
du -h .

# Display the disk usage of the current directory, including subdirectories
du -h -s *

# Display the disk usage of the current directory, limiting the depth to 1 level
du -h -d 1
```

Example output:

```
4.0K    .
4.0K    file1.txt
8.0K    file2.txt
12K     .
```

The output shows the disk usage for the current directory (`.`) and the files within it. The `-h` option displays the sizes in human-readable format.
