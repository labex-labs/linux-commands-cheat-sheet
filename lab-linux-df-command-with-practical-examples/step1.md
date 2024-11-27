# Understand the Purpose and Syntax of the df Command

In this step, you will learn about the purpose and syntax of the `df` command in Linux. The `df` command, short for "disk free", is a utility that displays information about the file system, including the total size, used space, and available space of each file system.

To use the `df` command, open a terminal and type the following command:

```bash
df
```

This will display the file system information for all mounted file systems on your system. The output will look similar to this:

```
Filesystem     1K-blocks     Used Available Use% Mounted on
udev             2000144        0   2000144   0% /dev
tmpfs             403044     1072    401972   1% /run
/dev/sda1       50331648  7195380  40953268  15% /
tmpfs            2015220        0   2015220   0% /dev/shm
tmpfs               5120        0       5120   0% /run/lock
tmpfs            2015220        0   2015220   0% /sys/fs/cgroup
/dev/sda2       97656732 16703420  75958312  18% /home
```

This output shows the file system, total size, used space, available space, and the mount point for each file system.

You can also use the `df` command with various options to customize the output. For example, to display the file system information in a more human-readable format, you can use the `-h` (human-readable) option:

```bash
df -h
```

This will display the file system information with the sizes shown in a more readable format, such as megabytes and gigabytes.
