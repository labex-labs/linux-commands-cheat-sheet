# Understanding the Basics of ping Command

In this step, you will learn the basics of the `ping` command in Linux. The `ping` command is a network diagnostic tool used to test the connectivity between a local host and a remote host. It sends Internet Control Message Protocol (ICMP) echo request packets to the target host and waits for the ICMP echo reply.

First, let's try pinging the local loopback interface:

```bash
ping 127.0.0.1
```

Example output:

```
PING 127.0.0.1 (127.0.0.1) 56(84) bytes of data.
64 bytes from 127.0.0.1: icmp_seq=1 ttl=64 time=0.027 ms
64 bytes from 127.0.0.1: icmp_seq=2 ttl=64 time=0.024 ms
64 bytes from 127.0.0.1: icmp_seq=3 ttl=64 time=0.025 ms
^C
--- 127.0.0.1 ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2ms
rtt min/avg/max/mdev = 0.024/0.025/0.027/0.001 ms
```

The `ping` command sends ICMP echo request packets to the loopback address `127.0.0.1` and displays the response time and other statistics. Press `Ctrl+C` to stop the ping.

Now, let's try pinging a remote host, such as `google.com`:

```bash
ping google.com
```

Example output:

```
PING google.com (142.250.184.78) 56(84) bytes of data.
64 bytes from lax34s15-in-f14.1e100.net (142.250.184.78): icmp_seq=1 ttl=117 time=12.3 ms
64 bytes from lax34s15-in-f14.1e100.net (142.250.184.78): icmp_seq=2 ttl=117 time=12.1 ms
64 bytes from lax34s15-in-f14.1e100.net (142.250.184.78): icmp_seq=3 ttl=117 time=12.2 ms
^C
--- google.com ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2003ms
rtt min/avg/max/mdev = 12.100/12.200/12.300/0.100 ms
```

The `ping` command resolves the hostname `google.com` to its IP address `142.250.184.78` and sends ICMP echo request packets to that address. The response time and other statistics are displayed.
