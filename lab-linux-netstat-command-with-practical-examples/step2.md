# Explore Network Connections Using the netstat Command

In this step, you will learn how to use the `netstat` command to explore and analyze network connections on your system.

Let's start by displaying all active network connections, including both listening ports and established connections:

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

Now, let's filter the output to show only the listening ports:

```
$ sudo netstat -antp | grep LISTEN
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      1234/sshd
tcp        0      0 127.0.0.1:3306          0.0.0.0:*               LISTEN      5678/mysqld
```

Example output:

- The `grep LISTEN` filter shows only the network connections that are in the LISTEN state, which indicates that the system is listening for incoming connections on those ports.

To display only the established connections, you can use the following command:

```
$ sudo netstat -antp | grep ESTABLISHED
tcp        0      0 192.168.1.100:22        192.168.1.101:50036     ESTABLISHED 1234/sshd
```

Example output:

- The `grep ESTABLISHED` filter shows only the network connections that are in the ESTABLISHED state, which indicates that the connection is active and data can be exchanged.

By using different options and filters with the `netstat` command, you can explore and analyze the network connections on your system in detail.
