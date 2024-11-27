# Understand the dnf Command

In this step, you will learn about the dnf (Dandified YUM) command, which is the default package manager for modern Red Hat-based Linux distributions like Fedora, CentOS, and RHEL.

First, let's check the current version of dnf installed on the system:

```bash
sudo dnf --version
```

Example output:

```
dnf version 4.9.0
```

The dnf command is used for various package management tasks, such as:

- Installing new packages
- Updating existing packages
- Removing packages
- Searching for packages
- Listing installed packages
- Managing package groups and dependencies

To get a quick overview of the available dnf commands and options, you can use the built-in help:

```bash
sudo dnf help
```

This will display a list of the most common dnf commands and a brief description of each.

You can also get more detailed information about a specific dnf command by using the `man` command:

```bash
man dnf
```

This will open the manual page for the dnf command, providing comprehensive documentation on its usage and available options.
