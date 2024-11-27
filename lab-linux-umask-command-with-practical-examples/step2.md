# Modifying File and Directory Permissions with umask

In this step, we will learn how to modify the default file and directory permissions using the `umask` command.

First, let's create a new file and directory to observe the effect of `umask`:

```bash
touch ~/project/new_file.txt
mkdir ~/project/new_directory
```

Now, let's check the permissions of the newly created file and directory:

```bash
ls -l ~/project
```

Example output:

```
-rw-r--r-- 1 labex labex     0 Apr 12 12:34 new_file.txt
drwxr-xr-x 2 labex labex  4096 Apr 12 12:34 new_directory
```

As you can see, the default permissions for the new file are `0644` (rw-r--r--) and the default permissions for the new directory are `0755` (rwxr-xr-x), which corresponds to the current `umask` value of `0022`.

Now, let's change the `umask` value to `0002`:

```bash
umask 0002
```

Let's create a new file and directory again:

```bash
touch ~/project/another_file.txt
mkdir ~/project/another_directory
```

And check the permissions:

```bash
ls -l ~/project
```

Example output:

```
-rw-rw-r-- 1 labex labex     0 Apr 12 12:35 another_file.txt
drwxrwxr-x 2 labex labex  4096 Apr 12 12:35 another_directory
```

As you can see, the default permissions for the new file are `0774` (rw-rw-r--) and the default permissions for the new directory are `0775` (rwxrwxr-x), which corresponds to the `umask` value of `0002`.

This demonstrates how you can use the `umask` command to modify the default permissions for newly created files and directories.
