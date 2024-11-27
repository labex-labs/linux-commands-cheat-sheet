# Introduction to the zypper Command

In this step, we will explore the zypper command, a powerful package management tool used in SUSE-based Linux distributions. Zypper is the default package manager for SUSE Linux Enterprise, openSUSE, and other SUSE-derived distributions.

The zypper command provides a wide range of functionality for managing software packages, including installing, updating, searching, and removing packages. Let's start by understanding the basic usage of the zypper command.

First, let's check the version of zypper installed on the system:

```
sudo zypper --version
```

Example output:

```
zypper 1.14.57 [...]
```

Next, we can use the `zypper help` command to see the available subcommands and options:

```
sudo zypper help
```

This will display a list of all the available zypper commands and a brief description of each.

Some of the most commonly used zypper commands are:

- `zypper install <package>`: Install a package
- `zypper update <package>`: Update a package
- `zypper search <package>`: Search for a package
- `zypper remove <package>`: Remove a package
- `zypper refresh`: Refresh the package repository information
- `zypper list-updates`: List available package updates

In the following steps, we will explore these commands in more detail and see practical examples of using zypper for package management.
