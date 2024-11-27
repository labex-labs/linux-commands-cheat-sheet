# Analyze File Permissions and Ownership with stat

In this step, you will learn how to use the `stat` command to analyze file permissions and ownership.

Let's start by creating a new file in the `~/project` directory:

```bash
touch ~/project/example.txt
```

Now, let's use the `stat` command to examine the file's permissions and ownership:

```bash
stat -c '%A %u %G' ~/project/example.txt
```

Example output:

```
-rw-r--r-- 1000 1000
```

This output shows:

- The file permissions: `-rw-r--r--` (read-write for the owner, read-only for the group and others)
- The user ID (UID) of the file owner: `1000` (which corresponds to the `labex` user)
- The group ID (GID) of the file's group: `1000` (which corresponds to the `labex` group)

You can also use the long-form options to get the same information:

```bash
stat --format='%A %U %G' ~/project/example.txt
```

Example output:

```
-rw-r--r-- labex labex
```

This shows the same information, but with the user and group names instead of the numeric IDs.

Understanding file permissions and ownership is crucial for managing access to files and directories in a Linux system. The `stat` command provides an easy way to quickly inspect this metadata.
