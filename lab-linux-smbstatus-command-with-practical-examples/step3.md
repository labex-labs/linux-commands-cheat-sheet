# Analyze Active SMB Connections and Shared Resources

In this final step, we will learn how to analyze the active SMB connections and shared resources on the system using the `smbstatus` command.

To list the active SMB connections, you can run the `smbstatus` command without any options:

```bash
sudo smbstatus
```

Example output:

```
Service      pid     Machine       Connected at
-----------------------------------------------
```

As you can see, the output is currently empty, as there are no active SMB connections on the system.

To list the shared resources, you can use the `-S` or `--shares` option:

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

If there are any active SMB connections, you can use the following options to get more detailed information:

- `-b` or `--brief`: Display a brief list of active connections.
- `-u` or `--user=USERNAME`: List connections for a specific user.
- `-d` or `--daemon`: List only daemon (server) connections.

For example, to list the active SMB connections in a brief format:

```bash
sudo smbstatus -b
```

Example output:

```
Service      pid     Machine       Connected at
-----------------------------------------------
```

As you can see, the output is still empty, as there are no active SMB connections on the system.

By understanding how to use the `smbstatus` command and analyze its output, you can gain valuable insights into the SMB activity on your Linux system, which can be useful for monitoring, troubleshooting, and security purposes.
