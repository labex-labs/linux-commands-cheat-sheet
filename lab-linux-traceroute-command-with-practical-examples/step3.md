# Troubleshooting Network Issues with traceroute

In this step, you will learn how to use the `traceroute` command to troubleshoot network issues.

Suppose you are trying to access a website, but you are experiencing slow or intermittent connectivity. You can use the `traceroute` command to identify where the issue might be occurring in the network path.

Let's try an example. Run the following command to trace the path to a website that is not responding:

```
traceroute www.non-existent-website.com
```

Example output:

```
traceroute to www.non-existent-website.com (192.0.2.1), 30 hops max, 60 byte packets
 1  192.168.1.1 (192.168.1.1)  1.123 ms  1.109 ms  1.095 ms
 2  10.0.0.1 (10.0.0.1)  10.234 ms  10.221 ms  10.208 ms
 3  172.16.0.1 (172.16.0.1)  20.345 ms  20.332 ms  20.319 ms
 4  203.0.113.1 (203.0.113.1)  30.456 ms  30.443 ms  30.430 ms
 5  * * *
```

The output shows that the trace stops at the fourth hop, and the subsequent hops are not responding (indicated by the `*` symbols). This could indicate a problem with the network connection or a firewall blocking the traffic.

You can also use the `traceroute` command to identify the specific hop where the issue is occurring. For example, if you notice high latency at a particular hop, you can investigate that hop further to identify the cause of the issue.

Here's an example of using `traceroute` to identify a slow hop:

```
traceroute www.example.com
```

Example output:

```
traceroute to www.example.com (93.184.216.34), 30 hops max, 60 byte packets
 1  192.168.1.1 (192.168.1.1)  1.123 ms  1.109 ms  1.095 ms
 2  10.0.0.1 (10.0.0.1)  10.234 ms  10.221 ms  10.208 ms
 3  172.16.0.1 (172.16.0.1)  **100.345 ms**  **100.332 ms**  **100.319 ms**
 4  203.0.113.1 (203.0.113.1)  30.456 ms  30.443 ms  30.430 ms
 5  198.51.100.1 (198.51.100.1)  40.567 ms  40.554 ms  40.541 ms
 6  93.184.216.34 (93.184.216.34)  50.678 ms  50.665 ms  50.652 ms
```

In this example, the third hop is experiencing high latency, which could be a potential bottleneck in the network path.

The `traceroute` command can be a valuable tool for troubleshooting network issues and identifying where problems might be occurring in the network path.
