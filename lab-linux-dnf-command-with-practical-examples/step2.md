# Install and Update Packages using dnf

In this step, you will learn how to use the dnf command to install new packages and update existing packages on your system.

First, let's search for a package using the `dnf search` command. For example, to search for the "tree" package:

```bash
sudo dnf search tree
```

Example output:

```
Last metadata expiration check: 0:00:36 ago on Fri 14 Apr 2023 05:33:00 PM UTC.
tree.x86_64 : Display a tree-like view of the directory structure
tree-python3.x86_64 : Python3 bindings for tree
tree-qt.x86_64 : Qt-based tree viewer
```

To install the "tree" package, use the `dnf install` command:

```bash
sudo dnf install -y tree
```

Example output:

```
Dependencies resolved.
...
Installed:
  tree-1.8.0-10.el8.x86_64
```

Now, let's update all the installed packages on the system using the `dnf update` command:

```bash
sudo dnf update -y
```

Example output:

```
Dependencies resolved.
...
Updated:
  ...
Complete!
```

The `-y` flag in the above commands automatically answers "yes" to any prompts, making the installation and update process unattended.
