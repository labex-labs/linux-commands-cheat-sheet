# Understand the Purpose and Syntax of the route Command

In this step, you will learn about the purpose and syntax of the `route` command in Linux. The `route` command is used to view and manipulate the IP routing table, which is responsible for determining the path that network traffic will take to reach its destination.

To begin, let's explore the basic syntax of the `route` command:

```
sudo route [command] [destination] [gateway] [metric]
```

Here's what each parameter means:

- `command`: The action to perform, such as `add`, `del`, or `show`.
- `destination`: The network or host to which the route applies.
- `gateway`: The gateway or next-hop router to which packets should be forwarded.
- `metric`: The cost or priority of the route, used for routing decisions.

Now, let's try some examples to see the `route` command in action.

To view the current routing table, use the `show` command:

```
sudo route -n show
```

Example output:

```
Kernel IP routing table
Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
0.0.0.0         172.17.0.1      0.0.0.0         UG    100    0        0 eth0
172.17.0.0      0.0.0.0         255.255.0.0     U     0      0        0 eth0
```

This shows the default gateway (`0.0.0.0`) and the local network route (`172.17.0.0`).

To add a new static route, use the `add` command:

```
sudo route add -net 192.168.1.0 netmask 255.255.255.0 gw 10.0.0.1
```

This adds a route to the `192.168.1.0/24` network, with a gateway of `10.0.0.1`.

To remove a route, use the `del` command:

```
sudo route del -net 192.168.1.0 netmask 255.255.255.0
```

This removes the route to the `192.168.1.0/24` network.
