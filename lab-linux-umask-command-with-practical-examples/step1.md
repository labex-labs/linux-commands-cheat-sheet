# Understanding the umask Command

In this step, we will explore the Linux `umask` command, which is used to set the default permissions for newly created files and directories.

The `umask` command specifies the file mode creation mask, which determines the default permissions for new files and directories. The `umask` value is a 4-digit octal number that represents the permissions that should not be granted.

Let's start by checking the current `umask` value:

```bash
umask
```

Example output:

```
0022
```

The `umask` value `0022` means that the default permissions for new files will be `0644` (rw-r--r--) and the default permissions for new directories will be `0755` (rwxr-xr-x).

The `umask` value is calculated by subtracting the specified value from the default permissions (`0777` for files and `0755` for directories). For example, with a `umask` of `0022`, the default permissions will be:

- Files: `0777 - 0022 = 0755` (rw-r--r--)
- Directories: `0755 - 0022 = 0733` (rwxr-xr--)

You can change the `umask` value using the following command:

```bash
umask 0002
```

This sets the `umask` to `0002`, which means that the default permissions for new files will be `0775` (rw-rwxr-x) and the default permissions for new directories will be `0775` (rwxrwxr-x).
