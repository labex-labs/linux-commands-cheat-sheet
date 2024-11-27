# Tracing the Network Path to a Destination

In this step, you will learn how to use the `traceroute` command to trace the network path to a destination.

Let's start by tracing the path to a well-known website, such as `www.google.com`:

```
traceroute www.google.com
```

Example output:

```
traceroute to www.google.com (142.250.66.78), 30 hops max, 60 byte packets
 1  192.168.1.1 (192.168.1.1)  1.123 ms  1.109 ms  1.095 ms
 2  10.0.0.1 (10.0.0.1)  10.234 ms  10.221 ms  10.208 ms
 3  172.16.0.1 (172.16.0.1)  20.345 ms  20.332 ms  20.319 ms
 4  203.0.113.1 (203.0.113.1)  30.456 ms  30.443 ms  30.430 ms
 5  198.51.100.1 (198.51.100.1)  40.567 ms  40.554 ms  40.541 ms
 6  142.250.66.78 (142.250.66.78)  50.678 ms  50.665 ms  50.652 ms
```

The output shows the network path from your system to the `www.google.com` website, including the IP addresses and response times for each hop along the way.

You can also use the `traceroute` command to trace the path to a specific IP address:

```
traceroute 8.8.8.8
```

Example output:

```
traceroute to 8.8.8.8 (8.8.8.8), 30 hops max, 60 byte packets
 1  192.168.1.1 (192.168.1.1)  1.123 ms  1.109 ms  1.095 ms
 2  10.0.0.1 (10.0.0.1)  10.234 ms  10.221 ms  10.208 ms
 3  172.16.0.1 (172.16.0.1)  20.345 ms  20.332 ms  20.319 ms
 4  203.0.113.1 (203.0.113.1)  30.456 ms  30.443 ms  30.430 ms
 5  8.8.8.8 (8.8.8.8)  40.567 ms  40.554 ms  40.541 ms
```

The `traceroute` command can be a valuable tool for understanding the network path to a destination and identifying potential issues along the way.
