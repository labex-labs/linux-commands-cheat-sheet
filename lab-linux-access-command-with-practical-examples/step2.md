# Modifying File Permissions with the chmod Command

In this step, you will learn how to use the `chmod` command to modify the permissions of files and directories in Linux.

The `chmod` command allows you to change the read, write, and execute permissions for the owner, group, and others. The basic syntax for the `chmod` command is:

```
chmod [options] mode file
```

Where `mode` is the new permission setting.

You can use symbolic mode or numeric mode to set the permissions. Symbolic mode uses letters to represent the permissions:

- `u` for the owner
- `g` for the group
- `o` for others
- `a` for all (owner, group, and others)
- `r` for read
- `w` for write
- `x` for execute

For example, to give the owner read and write permissions, the group read permissions, and others no permissions, you would use:

```
chmod u=rw,g=r,o= example.txt
```

Numeric mode uses a three-digit number to represent the permissions:

- The first digit represents the owner's permissions
- The second digit represents the group's permissions
- The third digit represents the permissions for others

Each digit is the sum of the following values:

- 4 for read
- 2 for write
- 1 for execute

For example, to set the permissions to `rw-r--r--`, you would use:

```
chmod 644 example.txt
```

Try modifying the permissions of the `example.txt` file using both symbolic and numeric modes:

```
# Symbolic mode
chmod u=rw,g=r,o=r example.txt
# Numeric mode
chmod 644 example.txt
```

Example output:

```
-rw-r--r-- 1 labex labex 0 Apr 12 12:34 example.txt
```

Now the file `example.txt` has the following permissions:

- The owner (labex) has read and write permissions (rw-)
- The group (labex) has read permissions (r--)
- Others have read permissions (r--)

Understanding how to use the `chmod` command is essential for managing file and directory permissions in a Linux system.
