# Trace the Path to a Remote Host Using tracepath

In this step, you will learn how to use the `tracepath` command to trace the path to a remote host and identify any network issues along the way.

Let's start by tracing the path to a remote host, such as `google.com`:

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

You can also use the `tracepath` command to trace the path to a different remote host, such as `example.com`:

```
$ sudo tracepath example.com
 1?: [LOCALHOST]                                         pmtu 1500
 1:  192.168.1.1                                           0.161ms
 1:  192.168.1.1                                           0.158ms
 2:  10.0.0.1                                              1.694ms
 3:  203.0.113.1                                           9.717ms
 4:  93.184.216.34                                        10.843ms
 5:  93.184.216.34                                        10.518ms
     Resume: pmtu 1500 hops 5 back 5
```

By running the `tracepath` command to different remote hosts, you can identify any network issues or bottlenecks along the path, such as high latency, packet loss, or MTU issues.
