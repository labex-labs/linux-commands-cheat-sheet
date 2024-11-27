# Explore smbstatus Command Options and Flags

In this step, we will explore the different options and flags available with the `smbstatus` command. The `smbstatus` command provides several options that allow you to customize the output and gather specific information about SMB connections and shared resources.

Let's start by looking at the available options:

```bash
sudo smbstatus --help
```

Example output:

```
Usage: smbstatus [OPTION...]
  -b, --brief                  Give only a brief list of connections
  -d, --daemon                 List only daemon connections
  -L, --locks                  List locking information
  -N, --numeric                Don't resolve addresses/users
  -p, --processes              List running smbd processes
  -S, --shares                 List shared resources
  -s, --configfile=CONFIGFILE  Use the given config file
  -t, --traces                 List various traces
  -u, --user=USERNAME          List connections for the given user
  -v, --verbose                Be verbose
  -V, --version                Print version
  -h, --help                   Print help
```

Some of the commonly used options include:

- `-b, --brief`: Displays a brief list of active SMB connections.
- `-L, --locks`: Lists the current locking information for shared resources.
- `-S, --shares`: Lists the currently shared resources on the system.
- `-u, --user=USERNAME`: Lists the SMB connections for a specific user.

For example, to list the currently shared resources, you can run:

```bash
sudo smbstatus -S
```

Example output:

```
Shared resources:
Share       Hosts
---------   ------
IPC$        *
```

This output shows that the only shared resource on the system is the `IPC$` (Inter-Process Communication) share, which is typically used for administrative purposes.

By exploring the various options and flags available with the `smbstatus` command, you can gather more detailed information about the SMB activity on your system, which can be useful for monitoring, troubleshooting, and security purposes.

In the next step, we will learn how to analyze the active SMB connections and shared resources using the `smbstatus` command.
