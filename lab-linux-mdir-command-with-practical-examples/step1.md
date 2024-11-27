# Understand the mdir Command

In this step, you will learn about the `mdir` command, which is used to create and manage directories in the Linux operating system.

The `mdir` command is a shell built-in command that allows you to create multiple directories at once. It is a convenient way to create a directory structure without having to use the `mkdir` command repeatedly.

To create a new directory using the `mdir` command, you can use the following syntax:

```
mdir directory1 directory2 directory3
```

This will create three new directories: `directory1`, `directory2`, and `directory3`.

Example output:

```
$ mdir test1 test2 test3
$ ls
test1  test2  test3
```

The `mdir` command also supports several options that allow you to customize its behavior. Some of the commonly used options include:

- `-p` or `--parents`: This option allows you to create parent directories as needed. For example, `mdir -p a/b/c` will create the directory structure `a/b/c` even if the parent directories (`a` and `b`) do not exist.
- `-v` or `--verbose`: This option displays a message for each directory created.
- `-m` or `--mode=MODE`: This option sets the permission mode for the created directories.

Example usage:

```
$ mdir -p a/b/c
$ ls -l
drwxr-xr-x 3 labex labex 4096 Apr 12 12:34 a
```

In this example, the `-p` option was used to create the directory structure `a/b/c`, and the default permissions were set (rwxr-xr-x).
