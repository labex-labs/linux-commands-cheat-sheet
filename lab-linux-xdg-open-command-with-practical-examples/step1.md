# Understand the xdg-open Command

In this step, you will learn about the `xdg-open` command, which is a standard way to open files and directories with their default applications in Linux.

The `xdg-open` command is part of the XDG Base Directory Specification, which is a set of conventions that define the locations of user data, configuration, and cache files in a Linux system. The `xdg-open` command is used to open a file or directory with the default application associated with that file type or directory.

Let's start by checking the version of `xdg-open` installed on your system:

```bash
xdg-open --version
```

Example output:

```
xdg-open 2.28.0
```

The `xdg-open` command can be used to open a file or directory with its default application. For example, to open a text file with the default text editor, you can run:

```bash
xdg-open ~/project/example.txt
```

This will open the `example.txt` file in the default text editor application on your system.

Similarly, to open a directory with the default file manager, you can run:

```bash
xdg-open ~/project
```

This will open the `~/project` directory in the default file manager application on your system.

The `xdg-open` command is a versatile tool that can be used to integrate your Linux desktop with various applications and file types. In the next step, you will learn how to use `xdg-open` to customize the default applications for different file types and directories.
