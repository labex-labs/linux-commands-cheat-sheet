# Analyze Network Statistics and Troubleshoot Network Issues

In this final step, you will learn how to use the `netstat` command to analyze network statistics and troubleshoot network issues on your system.

First, let's display the overall network statistics using the `-s` option:

```
$ sudo netstat -s
Ip:
    Forwarding: 2
    ...
Tcp:
    Active opens: 10
    Passive opens: 5
    ...
Udp:
    InDatagrams: 100
    NoPorts: 20
    ...
```

Example output:

- The `netstat -s` command displays a wide range of network statistics, including IP, TCP, and UDP statistics.
- This information can be useful for identifying potential network performance issues or anomalies.

Next, let's take a closer look at the network interface statistics using the `-i` option:

```
$ sudo netstat -i
Kernel Interface table
Iface   MTU Met   RX-OK RX-ERR RX-DRP RX-OVR    TX-OK TX-ERR TX-DRP TX-OVR Flg
enp0s3  1500 0     12345   0      0       0      54321     0       0       0 BMRU
lo     65536 0     54321   0      0       0      12345     0       0       0 LRU
```

Example output:

- The `netstat -i` command displays detailed statistics for each network interface, including the number of packets received and transmitted, as well as error and drop counts.
- This information can help you identify potential network interface issues, such as high error or drop rates.

Finally, let's use the `netstat` command to troubleshoot a network connection issue. Suppose you're experiencing connectivity problems with a remote server. You can use the following command to investigate the issue:

```
$ sudo netstat -antp | grep 192.168.1.101
tcp        0      0 192.168.1.100:22        192.168.1.101:50036     ESTABLISHED 1234/sshd
```

Example output:

- The `netstat -antp | grep 192.168.1.101` command searches for any active connections to the IP address `192.168.1.101`.
- The output shows that there is an established SSH connection between the local system (`192.168.1.100`) and the remote server (`192.168.1.101`).
- This information can help you determine if the connection issue is on the local or remote system, or if the issue is with the network infrastructure between the two systems.

By using the various options and features of the `netstat` command, you can effectively analyze network statistics and troubleshoot network issues on your Linux system.
