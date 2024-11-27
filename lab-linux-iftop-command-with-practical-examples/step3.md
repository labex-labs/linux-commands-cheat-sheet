# Advanced iftop Usage Scenarios

In this step, we will explore some advanced usage scenarios of the iftop command.

1. Monitoring a specific network interface:

```bash
sudo iftop -i eth0
```

This will display the network traffic on the `eth0` interface only.

2. Filtering traffic by host or port:

```bash
sudo iftop -F 192.168.1.100
```

This will display the network traffic to and from the host with the IP address `192.168.1.100`.

```bash
sudo iftop -p 80
```

This will display the network traffic on port 80 (HTTP).

3. Saving the output to a file:

```bash
sudo iftop -B -f iftop.txt
```

This will save the iftop output to the `iftop.txt` file in the current directory.

4. Displaying the output in a specific format:

```bash
sudo iftop -o "%-18s %-18s %10.2f %10.2f %10.2f"
```

This will display the output in a custom format, showing the source, destination, incoming, outgoing, and total bandwidth usage.

5. Displaying the output in a web browser:

```bash
sudo iftop -w
```

This will start the iftop web server and display the network traffic information in a web browser.

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
