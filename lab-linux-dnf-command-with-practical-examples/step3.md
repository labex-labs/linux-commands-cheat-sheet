# Manage Package Groups and Dependencies with dnf

In this step, you will learn how to manage package groups and dependencies using the dnf command.

Package groups in dnf are collections of related packages that can be installed or removed together. To list all available package groups, use the `dnf group list` command:

```bash
sudo dnf group list
```

Example output:

```
Available Environment Groups:
   ...
   Server with GUI
   Minimal Install
   ...
Available Groups:
   Authoring and Publishing
   C Development Tools and Libraries
   ...
```

To install a package group, use the `dnf group install` command. For example, to install the "Development Tools" group:

```bash
sudo dnf group install -y "Development Tools"
```

Example output:

```
Dependencies resolved.
...
Installed:
  ...
```

When installing a package, dnf will also handle the package dependencies automatically. You can see the list of dependencies that will be installed by using the `dnf deplist` command:

```bash
sudo dnf deplist tree
```

Example output:

```
package: tree-1.8.0-10.el8.x86_64
dependency: libc.so.6()(64bit)
dependency: libm.so.6()(64bit)
dependency: libncurses.so.6()(64bit)
dependency: libpthread.so.0()(64bit)
dependency: rtld(GNU_HASH)
```

This shows the dependencies required by the "tree" package.

To remove a package group, use the `dnf group remove` command:

```bash
sudo dnf group remove -y "Development Tools"
```

Example output:

```
Dependencies resolved.
...
Removed:
  ...
```
