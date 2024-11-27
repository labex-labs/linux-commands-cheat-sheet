# Understand the Purpose and Syntax of the netstat Command

In this step, you will learn about the purpose and basic syntax of the `netstat` command in Linux. The `netstat` command is a powerful tool for monitoring and troubleshooting network connections and network interface statistics.

To start, let's explore the basic syntax of the `netstat` command:

```
$ netstat [options]
```

The most common options used with `netstat` are:

- `-a`: Display all network connections and listening ports
- `-n`: Display numerical addresses instead of resolving hostnames
- `-t`: Display TCP connections
- `-u`: Display UDP connections
- `-p`: Display the process ID and name associated with each connection
- `-s`: Display networking statistics

Let's try some examples to understand the output of the `netstat` command:

```
$ sudo netstat -antp
Active Internet connections (servers and established)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      1234/sshd
tcp        0      0 127.0.0.1:3306          0.0.0.0:*               LISTEN      5678/mysqld
tcp        0      0 192.168.1.100:22        192.168.1.101:50036     ESTABLISHED 1234/sshd
```

Example output:

- The `netstat -antp` command displays all active TCP connections, including listening ports and established connections.
- The output shows the protocol, local and foreign addresses, connection state, and the process ID and program name associated with each connection.

This gives you a basic understanding of the `netstat` command and its syntax. In the next step, you will explore more advanced usage of `netstat` to analyze network connections.
