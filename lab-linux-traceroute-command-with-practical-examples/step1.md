# Introduction to the traceroute Command

In this step, you will learn about the `traceroute` command in Linux, which is a network diagnostic tool used to trace the network path to a destination. The `traceroute` command sends packets to a destination and displays the route the packets take, along with the time it takes for each hop.

First, let's check if the `traceroute` command is installed on your system. Run the following command:

```
sudo apt-get update
sudo apt-get install -y traceroute
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libc-ares2 libcap2 libpcap0.8 libssh2-1
Suggested packages:
  rarpd
The following NEW packages will be installed:
  libc-ares2 libcap2 libpcap0.8 libssh2-1 traceroute
0 upgraded, 5 newly installed, 0 to remove and 0 not upgraded.
Need to get 155 kB of archives.
After this operation, 501 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
...
```

Now that you have the `traceroute` command installed, let's try using it to trace the network path to a destination. Run the following command:

```
traceroute www.example.com
```

Example output:

```
traceroute to www.example.com (93.184.216.34), 30 hops max, 60 byte packets
 1  192.168.1.1 (192.168.1.1)  1.123 ms  1.109 ms  1.095 ms
 2  10.0.0.1 (10.0.0.1)  10.234 ms  10.221 ms  10.208 ms
 3  172.16.0.1 (172.16.0.1)  20.345 ms  20.332 ms  20.319 ms
 4  203.0.113.1 (203.0.113.1)  30.456 ms  30.443 ms  30.430 ms
 5  198.51.100.1 (198.51.100.1)  40.567 ms  40.554 ms  40.541 ms
 6  93.184.216.34 (93.184.216.34)  50.678 ms  50.665 ms  50.652 ms
```

The output shows the network path from your system to the `www.example.com` website, including the IP addresses and response times for each hop along the way.

The `traceroute` command can be a valuable tool for troubleshooting network issues, as it can help you identify where in the network path a problem may be occurring.
