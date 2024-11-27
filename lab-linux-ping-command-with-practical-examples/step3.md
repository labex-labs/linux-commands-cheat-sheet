# Troubleshooting Network Issues with ping

In this step, you will learn how to use the `ping` command to troubleshoot network issues.

First, let's try pinging a host that is not reachable:

```bash
ping 8.8.8.8
```

Example output:

```
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
^C
--- 8.8.8.8 ping statistics ---
3 packets transmitted, 0 received, 100% packet loss, time 2000ms
```

In this case, the `ping` command shows 100% packet loss, indicating that the host is not reachable.

Next, let's try pinging a host with a long response time:

```bash
ping slowweb.com
```

Example output:

```
PING slowweb.com (93.184.216.34) 56(84) bytes of data.
64 bytes from 93.184.216.34: icmp_seq=1 ttl=54 time=1000 ms
64 bytes from 93.184.216.34: icmp_seq=2 ttl=54 time=1001 ms
64 bytes from 93.184.216.34: icmp_seq=3 ttl=54 time=1000 ms
^C
--- slowweb.com ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 3002ms
rtt min/avg/max/mdev = 1000.000/1000.333/1001.000/0.577 ms
```

In this case, the `ping` command shows a very high response time, which could indicate a network performance issue.

Finally, let's try pinging a host with a high packet loss:

```bash
ping lossy.com
```

Example output:

```
PING lossy.com (93.184.216.34) 56(84) bytes of data.
64 bytes from 93.184.216.34: icmp_seq=1 ttl=54 time=100 ms
64 bytes from 93.184.216.34: icmp_seq=2 ttl=54 time=100 ms
64 bytes from 93.184.216.34: icmp_seq=3 ttl=54 time=100 ms
64 bytes from 93.184.216.34: icmp_seq=4 ttl=54 time=100 ms
^C
--- lossy.com ping statistics ---
4 packets transmitted, 4 received, 50% packet loss, time 3003ms
rtt min/avg/max/mdev = 100.000/100.000/100.000/0.000 ms
```

In this case, the `ping` command shows a 50% packet loss, which could indicate a network issue.
