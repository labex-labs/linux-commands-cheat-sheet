# Manage Dynamic Routing with the route Command

In this step, you will learn how to manage dynamic routing using the `route` command. Dynamic routing protocols, such as OSPF or BGP, automatically update the routing table based on network changes, making it easier to maintain complex network topologies.

Let's start by adding a default route using the `add default` command:

```
sudo route add default gw 10.0.0.1
```

This command adds a default route, which will be used for any traffic that doesn't match a more specific route in the routing table.

You can verify the new default route by running the `route -n` command:

```
sudo route -n
```

Example output:

```
Kernel IP routing table
Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
0.0.0.0         10.0.0.1        0.0.0.0         UG    0      0        0 eth0
10.0.0.2        0.0.0.0         255.255.255.255 UH    0      0        0 eth0
192.168.1.0     0.0.0.0         255.255.255.0   U     0      0        0 eth0
192.168.2.0     10.0.0.2        255.255.255.0   UG    0      0        0 eth0
172.17.0.0      0.0.0.0         255.255.0.0     U     0      0        0 eth0
```

You can see the new default route with the gateway `10.0.0.1`.

To remove a dynamic route, you can use the `del` command:

```
sudo route del default
```

This removes the default route from the routing table.
