# Understand the Purpose and Syntax of the repquota Command

In this step, we will explore the purpose and syntax of the `repquota` command in Linux. The `repquota` command is used to display disk usage and limits for a specific user or group.

First, let's check the man page for the `repquota` command to understand its usage:

```bash
man repquota
```

The output will show the syntax and options available for the `repquota` command. The basic syntax is:

```
repquota [options] [filesystems]
```

Some common options include:

- `-a`: Display quota information for all filesystems
- `-u`: Display quota information for users
- `-g`: Display quota information for groups
- `-v`: Display quota information in a verbose format

To see the current disk quota information for the `labex` user, we can run:

```bash
sudo repquota -u labex
```

Example output:

```
User            used    soft    hard  grace
---------------------------------------------
labex        --       0       0
```

This output shows that the `labex` user currently has no disk quota limits set.
