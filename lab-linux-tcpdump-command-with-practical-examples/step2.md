# Capturing Network Traffic with tcpdump

In this step, you will learn how to use the tcpdump command to capture network traffic and analyze the captured packets.

Let's start by capturing all network traffic on the default network interface:

```bash
sudo tcpdump -i any -c 10
```

Example output:

```
tcpdump: verbose output suppressed, use -v or -vv for full protocol decode
listening on any, link-type LINUX_SLL (Linux cooked), capture size 262144 bytes
16:29:56.832591 IP 172.17.0.2 > 172.17.0.1: ICMP echo request, id 1, seq 3, length 64
16:29:56.832648 IP 172.17.0.1 > 172.17.0.2: ICMP echo reply, id 1, seq 3, length 64
16:29:57.832607 IP 172.17.0.2 > 172.17.0.1: ICMP echo request, id 1, seq 4, length 64
16:29:57.832663 IP 172.17.0.1 > 172.17.0.2: ICMP echo reply, id 1, seq 4, length 64
16:29:58.832617 IP 172.17.0.2 > 172.17.0.1: ICMP echo request, id 1, seq 5, length 64
16:29:58.832673 IP 172.17.0.1 > 172.17.0.2: ICMP echo reply, id 1, seq 5, length 64
16:29:59.832628 IP 172.17.0.2 > 172.17.0.1: ICMP echo request, id 1, seq 6, length 64
16:29:59.832684 IP 172.17.0.1 > 172.17.0.2: ICMP echo reply, id 1, seq 6, length 64
17:00:00.832638 IP 172.17.0.2 > 172.17.0.1: ICMP echo request, id 1, seq 7, length 64
17:00:00.832694 IP 172.17.0.1 > 172.17.0.2: ICMP echo reply, id 1, seq 7, length 64
10 packets captured
10 packets received by filter
0 packets dropped by kernel
```

The `-c 10` option tells tcpdump to capture a maximum of 10 packets and then exit.

You can also capture packets and save them to a file for later analysis:

```bash
sudo tcpdump -i any -w network_capture.pcap
```

This command will start capturing network traffic and save it to a file named `network_capture.pcap`. Press Ctrl+C to stop the capture.

To view the captured packets, you can use a network protocol analyzer tool like Wireshark. Alternatively, you can use the tcpdump command to analyze the captured file:

```bash
sudo tcpdump -r network_capture.pcap
```

This will display the contents of the `network_capture.pcap` file.
