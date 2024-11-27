# Analyze Socket Statistics and States with the ss Command

In this step, you will learn how to use the `ss` command to analyze socket statistics and states on your Linux system.

Let's start by displaying detailed information about TCP sockets:

```
sudo ss -t -i
```

Example output:

```
State      Recv-Q Send-Q Local Address:Port               Peer Address:Port
ESTAB      0      0      172.17.0.2:36578                 172.17.0.1:22
   cubic wscale:7,7 rto:200 rtt:0.025/0.011 ato:40 mss:1460 pmtu:1500 rcvmss:1460 advmss:1460 cwnd:10 bytes_acked:1392 bytes_received:0 segs_out:18 segs_in:1 send 1.00Mbps rcv_space:29200

LISTEN     0      4096   127.0.0.1:6379                   0.0.0.0:*
   cubic wscale:7,7 rto:200 rtt:0.025/0.011 ato:40 mss:536 pmtu:1500 rcvmss:536 advmss:1460 cwnd:10 bytes_acked:1392 bytes_received:0 segs_out:18 segs_in:1 send 1.00Mbps rcv_space:29200
```

This command displays detailed information about each TCP socket, including the socket state, send and receive queue sizes, local and remote addresses, and various socket statistics such as the congestion control algorithm, window scaling, round-trip time, and more.

To display the state of all sockets, you can use the `ss` command with the `-o` option:

```
sudo ss -o
```

Example output:

```
State      Recv-Q Send-Q Local Address:Port               Peer Address:Port                  Timer
ESTAB      0      0      172.17.0.2:36578                 172.17.0.1:22                     timer:(keepalive,14sec,0)
LISTEN     0      4096   127.0.0.1:6379                   0.0.0.0:*                         timer:(timewait,60.0)
UNCONN     0      0      127.0.0.53%lo:53                 0.0.0.0:*                         timer:(off,0)
UNCONN     0      0      172.17.0.2:41378                 8.8.8.8:53                        timer:(off,0)
```

This command displays the state of all sockets, including the timer information for each socket.

By analyzing the output of the `ss` command with the `-t -i` and `-o` options, you can gain a deeper understanding of the network connections on your Linux system, which can be useful for troubleshooting and performance optimization.
