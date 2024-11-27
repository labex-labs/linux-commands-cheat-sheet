# Explore Network Connections Using the ss Command

In this step, you will learn how to use the `ss` command to explore and analyze network connections on your Linux system.

Let's start by displaying all active network connections:

```
sudo ss -a
```

Example output:

```
State      Recv-Q Send-Q Local Address:Port               Peer Address:Port
LISTEN     0      4096   127.0.0.1:6379                   0.0.0.0:*
ESTAB      0      0      172.17.0.2:36578                 172.17.0.1:22
UNCONN     0      0      127.0.0.53%lo:53                 0.0.0.0:*
UNCONN     0      0      172.17.0.2:41378                 8.8.8.8:53
```

This command shows all active sockets, including listening and non-listening sockets.

To display only the listening sockets, you can use the `-l` option:

```
sudo ss -l
```

Example output:

```
State      Recv-Q Send-Q Local Address:Port               Peer Address:Port
LISTEN     0      4096   127.0.0.1:6379                   0.0.0.0:*
LISTEN     0      4096   /run/dbus/system_bus_socket      *:*
LISTEN     0      4096   /run/systemd/journal/stdout      *:*
```

This command shows all the listening sockets on your system, which are waiting for incoming connections.

To display the process using a specific socket, you can use the `-p` option:

```
sudo ss -ltp
```

Example output:

```
State      Recv-Q Send-Q Local Address:Port               Peer Address:Port                  Process
LISTEN     0      4096   127.0.0.1:6379                   0.0.0.0:*                         users:(("redis-server",pid=520,fd=6))
LISTEN     0      4096   /run/dbus/system_bus_socket      *:*                               users:(("dbus-daemon",pid=518,fd=10))
LISTEN     0      4096   /run/systemd/journal/stdout      *:*                               users:(("systemd-journal",pid=516,fd=13))
```

This command shows the process ID and the name of the process using each listening socket.

By exploring the output of the `ss` command, you can gain valuable insights into the network connections on your Linux system, which can be useful for troubleshooting and monitoring purposes.
