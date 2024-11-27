# Filter and Search Log Entries with the uulog Command

In this step, you will learn how to filter and search log entries using the `uulog` command.

Filtering log entries by priority level:

```
$ sudo uulog -p err
```

This will display all log entries with the "error" priority level.

You can also filter log entries by user:

```
$ sudo uulog -u root
```

This will display all log entries associated with the "root" user.

To search for specific keywords in the log entries:

```
$ sudo uulog | grep "failed login"
```

This will display all log entries containing the phrase "failed login".

You can combine multiple filters to narrow down your search:

```
$ sudo uulog -p err | grep "sshd"
```

This will display all error-level log entries related to the `sshd` service.

Example output:

```
Apr 01 12:35:10 myhost sshd[12346]: Failed password for invalid user example from 192.168.1.100 port 12345 ssh2
Apr 02 15:22:33 myhost sshd[12347]: Connection closed by 192.168.1.101 port 12346 [preauth]
```

The `uulog` command provides a powerful way to filter and search through system log entries, making it easier to identify and troubleshoot issues on your Linux system.
