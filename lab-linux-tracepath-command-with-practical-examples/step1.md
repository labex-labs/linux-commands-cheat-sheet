# Understand the Purpose of tracepath Command

In this step, you will learn about the purpose and usage of the `tracepath` command in Linux. The `tracepath` command is a network diagnostic tool that is used to trace the path taken by packets from the local host to a remote host, and to identify any intermediate hops or network issues along the way.

The `tracepath` command is similar to the `traceroute` command, but it uses the Path MTU Discovery (PMTUD) mechanism to determine the maximum transmission unit (MTU) along the path, which can help identify network issues related to packet fragmentation.

Let's start by running the `tracepath` command to a remote host:

```
$ sudo tracepath google.com
 1?: [LOCALHOST]                                         pmtu 1500
 1:  192.168.1.1                                           0.161ms
 1:  192.168.1.1                                           0.158ms
 2:  10.0.0.1                                              1.694ms
 3:  203.0.113.1                                           9.717ms
 4:  142.250.209.174                                      10.843ms
 5:  142.250.209.174                                      10.518ms
     Resume: pmtu 1500 hops 5 back 5
```

Example output:

The output shows the path taken by the packets from the local host to the remote host `google.com`. Each line represents a hop in the path, and the output includes the following information:

- The hop number
- The IP address of the intermediate router or network device
- The round-trip time (RTT) for the packet to reach that hop and return to the local host

The `tracepath` command also reports the maximum transmission unit (MTU) along the path, which is 1500 bytes in this case.

By running the `tracepath` command, you can identify any network issues or bottlenecks along the path, such as high latency, packet loss, or MTU issues.
