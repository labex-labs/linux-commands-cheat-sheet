# Pinging Local and Remote Hosts

In this step, you will learn how to use the `ping` command to test the connectivity to both local and remote hosts.

First, let's ping the local host using the IP address:

```bash
ping 192.168.1.1
```

Example output:

```
PING 192.168.1.1 (192.168.1.1) 56(84) bytes of data.
64 bytes from 192.168.1.1: icmp_seq=1 ttl=64 time=0.041 ms
64 bytes from 192.168.1.1: icmp_seq=2 ttl=64 time=0.034 ms
64 bytes from 192.168.1.1: icmp_seq=3 ttl=64 time=0.035 ms
^C
--- 192.168.1.1 ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2ms
rtt min/avg/max/mdev = 0.034/0.037/0.041/0.003 ms
```

Now, let's ping a remote host using the hostname:

```bash
ping github.com
```

Example output:

```
PING github.com (140.82.121.4) 56(84) bytes of data.
64 bytes from lb-140-82-121-4-iad.github.com (140.82.121.4): icmp_seq=1 ttl=54 time=24.3 ms
64 bytes from lb-140-82-121-4-iad.github.com (140.82.121.4): icmp_seq=2 ttl=54 time=24.1 ms
64 bytes from lb-140-82-121-4-iad.github.com (140.82.121.4): icmp_seq=3 ttl=54 time=24.2 ms
^C
--- github.com ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2003ms
rtt min/avg/max/mdev = 24.100/24.200/24.300/0.100 ms
```

The `ping` command resolves the hostname `github.com` to its IP address `140.82.121.4` and sends ICMP echo request packets to that address.
