# Monitoring Network Traffic Using iftop

In this step, we will learn how to use the iftop command to monitor network traffic on your system.

First, let's start the iftop command in interactive mode:

```bash
sudo iftop
```

This will display the real-time network traffic on your system. The output shows the source and destination IP addresses, as well as the incoming, outgoing, and total bandwidth usage.

To better understand the output, let's go through the different sections:

- The top section displays the host names or IP addresses involved in the network traffic.
- The "In:" section shows the incoming bandwidth for each connection.
- The "Out:" section shows the outgoing bandwidth for each connection.
- The "Total:" section shows the total bandwidth usage for all connections.

You can use the following keys to interact with the iftop command:

- `p`: Pause the display
- `t`: Toggle the time display mode (cumulative or interval)
- `n`: Toggle the display of host names or IP addresses
- `i`: Cycle through the network interfaces
- `m`: Cycle through the display modes (bandwidth, packets, or bits)
- `s`: Sort the display by source address
- `d`: Sort the display by destination address
- `r`: Reverse the sort order
- `q`: Quit the iftop command

Example output:

```
@@@@ IFTOP 1.0~pre4 @@@@
 192.168.1.100 : 192.168.1.101
                 192.168.1.102
                 192.168.1.103
                 192.168.1.104
                 192.168.1.105
                 192.168.1.106
                 192.168.1.107
                 192.168.1.108
                 192.168.1.109
                 192.168.1.110

            In:  0.00 Kb/s   0.00 Kb/s   0.00 Kb/s
           Out:  0.00 Kb/s   0.00 Kb/s   0.00 Kb/s
         Total:  0.00 Kb/s   0.00 Kb/s   0.00 Kb/s
```
