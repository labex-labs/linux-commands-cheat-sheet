# Understand the rpm Command and Its Use Cases

In this step, we will explore the rpm (Red Hat Package Manager) command, which is a powerful tool for managing packages in Linux distributions that use the RPM package format, such as CentOS, RHEL, and Fedora.

The rpm command allows you to perform various package management tasks, including:

- Installing, upgrading, and removing RPM packages
- Querying information about installed packages
- Verifying the integrity of installed packages
- Managing package dependencies

Let's start by understanding the basic usage of the rpm command.

```bash
# Display the rpm command help
sudo rpm --help
```

Example output:

```
Usage: rpm [options] <command>
Options most frequently used with single sub-commands:
  -v, --verbose        increase the verbosity of output
  -vv                  show debug output
  -h, --hash           print hash marks as package installs (good with -v)
  -i, --install        install a package
  -U, --upgrade        upgrade a package
  -F, --freshen        upgrade a package, if already installed
  -e, --erase          remove a package
  -q, --query          query information about installed packages
  -p, --package        query a package file
  --nodeps             ignore package dependencies
  --force              force an action, overriding dependencies
  --test               test an action, but don't execute it
  --justdb             update the database, but do not modify the filesystem
  --prefix <dir>       set the installation prefix
  --relocate <old>=<new>  relocate a package to a new prefix
```

The rpm command has a wide range of options and subcommands that allow you to perform various package management tasks. In the following steps, we will explore some of the most common use cases for the rpm command.
