# Understand the dpkg Command

In this step, you will learn about the `dpkg` command, which is the low-level package manager in Debian-based Linux distributions like Ubuntu. The `dpkg` command is used to install, remove, and manage packages on your system.

First, let's check the version of `dpkg` installed on your system:

```bash
dpkg --version
```

Example output:

```
dpkg 1.21.1ubuntu2.1
```

The `dpkg` command has several subcommands that you can use to manage packages. Some of the most common subcommands are:

- `install`: Install a package
- `remove`: Remove a package
- `purge`: Remove a package and its configuration files
- `list`: List installed packages
- `info`: Display information about a package
- `status`: Display the status of a package

You can get more information about the `dpkg` command and its subcommands by using the `man` command:

```bash
man dpkg
```

This will open the manual page for the `dpkg` command, where you can find detailed information about its usage and available options.
