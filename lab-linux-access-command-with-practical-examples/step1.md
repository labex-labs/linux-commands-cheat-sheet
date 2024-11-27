# Understanding File Permissions in Linux

In this step, you will learn about the fundamental file permissions in Linux and how to view and understand them.

In Linux, every file and directory has a set of permissions that determine who can read, write, and execute the file or directory. These permissions are divided into three categories: owner, group, and others.

To view the permissions of a file or directory, you can use the `ls -l` command. This will display the file permissions in the following format:

```
-rw-r--r-- 1 labex labex 0 Apr 12 12:34 example.txt
```

The first character indicates the file type (- for regular file, d for directory, l for symbolic link, etc.). The next nine characters represent the permissions, with the first three being the owner's permissions, the next three being the group's permissions, and the last three being the permissions for others.

The permissions are represented by the letters r (read), w (write), and x (execute). If a permission is not granted, a dash (-) is displayed instead.

For example, in the output above:

- The owner (labex) has read and write permissions (rw-).
- The group (labex) has read permissions (r--).
- Others have read permissions (r--).

You can also use the `stat` command to view more detailed information about a file, including its permissions:

```
$ stat example.txt
  File: example.txt
  Size: 0         	Blocks: 0          IO Block: 4096   regular empty file
Device: 801h/2049d	Inode: 131074      Links: 1
Access: (0644/-rw-r--r--)  Uid: (1000/labex)   Gid: (1000/labex)
Access: 2023-04-12 12:34:56.123456789 +0000
Modify: 2023-04-12 12:34:56.123456789 +0000
Change: 2023-04-12 12:34:56.123456789 +0000
 Birth: -
```

This output provides more details about the file, including the access, modification, and change times, as well as the user and group ownership.

Understanding file permissions is essential for managing access to files and directories in a Linux system.
