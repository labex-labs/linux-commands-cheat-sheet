# Customize the df Command Output

In this step, you will learn how to customize the output of the `df` command to display the information you need.

The `df` command has several options that allow you to customize the output. Here are a few examples:

1. Display the file system information in a more human-readable format:

```bash
df -h
```

This will display the file system information with the sizes shown in a more readable format, such as megabytes and gigabytes.

2. Display the file system type:

```bash
df -T
```

This will display the file system type for each file system.

3. Display the inodes information:

```bash
df -i
```

This will display the total number of inodes, used inodes, and available inodes for each file system.

4. Display the file system information in a specific format:

```bash
df --output=source,fstype,size,used,avail,pcent,target
```

This will display the file system information in a specific format, including the file system source, type, size, used space, available space, percentage used, and mount point.

You can also combine these options to customize the output even further. For example:

```bash
df -h --output=source,fstype,size,used,avail,pcent,target
```

This will display the file system information in a human-readable format with the specific fields you want to see.
