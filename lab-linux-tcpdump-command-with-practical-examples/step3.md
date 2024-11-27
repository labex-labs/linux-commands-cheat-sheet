# Filtering Network Traffic with tcpdump

In this step, you will learn how to use tcpdump to filter network traffic based on various criteria, such as IP addresses, ports, and protocols.

Let's start by capturing only the HTTP traffic:

```bash
sudo tcpdump -i any -c 10 tcp port 80
```

Example output:

```
tcpdump: verbose output suppressed, use -v or -vv for full protocol decode
listening on any, link-type LINUX_SLL (Linux cooked), capture size 262144 bytes
17:04:01.832648 IP 172.17.0.2.49154 > 172.17.0.1.80: Flags [S], seq 3569349168, win 64240, options [mss 1460,sackOK,TS val 1000 ecr 0,nop,wscale 7], length 0
17:04:01.832702 IP 172.17.0.1.80 > 172.17.0.2.49154: Flags [S.], seq 2662318800, ack 3569349169, win 65160, options [mss 1460,sackOK,TS val 1000 ecr 1000,nop,wscale 7], length 0
17:04:01.832736 IP 172.17.0.2.49154 > 172.17.0.1.80: Flags [.], ack 1, win 502, length 0
17:04:01.832747 IP 172.17.0.2.49154 > 172.17.0.1.80: Flags [P.], seq 1:74, ack 1, win 502, length 73
17:04:01.832766 IP 172.17.0.1.80 > 172.17.0.2.49154: Flags [.], ack 74, win 512, length 0
17:04:01.832774 IP 172.17.0.1.80 > 172.17.0.2.49154: Flags [P.], seq 1:1449, ack 74, win 512, length 1448
17:04:01.832785 IP 172.17.0.2.49154 > 172.17.0.1.80: Flags [.], ack 1449, win 502, length 0
17:04:01.832793 IP 172.17.0.2.49154 > 172.17.0.1.80: Flags [F.], seq 74, ack 1449, win 502, length 0
17:04:01.832807 IP 172.17.0.1.80 > 172.17.0.2.49154: Flags [F.], seq 1449, ack 75, win 512, length 0
17:04:01.832815 IP 172.17.0.2.49154 > 172.17.0.1.80: Flags [.], ack 1450, win 502, length 0
10 packets captured
10 packets received by filter
0 packets dropped by kernel
```

The `tcp port 80` filter tells tcpdump to only capture packets on TCP port 80, which is the standard port for HTTP traffic.

You can also filter by IP addresses:

```bash
sudo tcpdump -i any -c 10 host 172.17.0.2
```

This will capture the first 10 packets to or from the IP address `172.17.0.2`.

Additionally, you can combine multiple filters:

```bash
sudo tcpdump -i any -c 10 tcp port 80 and host 172.17.0.2
```

This will capture the first 10 packets that are HTTP traffic to or from the IP address `172.17.0.2`.
