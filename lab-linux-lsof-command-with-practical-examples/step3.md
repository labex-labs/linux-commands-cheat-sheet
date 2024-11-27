# Locate Network Connections Using lsof

In this step, you will learn how to use the `lsof` command to identify network connections on your system.

To list all the network connections on your system, you can use the `lsof` command with the `-i` option:

```bash
sudo lsof -i
```

Example output:

```
COMMAND   PID USER   FD   TYPE DEVICE SIZE/OFF NODE NAME
sshd      824 root   3u  IPv4  18620      0t0  TCP *:22 (LISTEN)
sshd      824 root   4u  IPv6  18622      0t0  TCP *:22 (LISTEN)
nginx    825 root   6u  IPv4  18650      0t0  TCP *:80 (LISTEN)
nginx    826 www-data 6u IPv4  18650      0t0  TCP *:80 (LISTEN)
nginx    827 www-data 6u IPv4  18650      0t0  TCP *:80 (LISTEN)
```

This output shows all the network connections on the system, including the `sshd` process listening on port 22 (SSH) and the `nginx` process listening on port 80 (HTTP).

You can also filter the output to show only specific types of network connections. For example, to show only TCP connections:

```bash
sudo lsof -i TCP
```

Example output:

```
COMMAND   PID USER   FD   TYPE DEVICE SIZE/OFF NODE NAME
sshd      824 root   3u  IPv4  18620      0t0  TCP *:22 (LISTEN)
sshd      824 root   4u  IPv6  18622      0t0  TCP *:22 (LISTEN)
nginx    825 root   6u  IPv4  18650      0t0  TCP *:80 (LISTEN)
nginx    826 www-data 6u IPv4  18650      0t0  TCP *:80 (LISTEN)
nginx    827 www-data 6u IPv4  18650      0t0  TCP *:80 (LISTEN)
```

You can also filter the output to show only connections for a specific user or process. For example, to show only the network connections for the `labex` user:

```bash
sudo lsof -i -u labex
```

The `lsof` command can be a powerful tool for troubleshooting network issues and understanding the network activity on your system.
