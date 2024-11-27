# Manage Network Interfaces with the ip Command

In this step, you will learn how to manage network interfaces using the `ip` command.

First, let's create a new network interface using the `ip link add` command:

```
sudo ip link add name myint type dummy
```

This creates a new dummy interface named `myint`. You can verify the interface was created using the `ip link show` command:

```
sudo ip link show

Example output:
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN mode DEFAULT group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP mode DEFAULT group default qlen 1000
    link/ether 02:42:ac:11:00:02 brd ff:ff:ff:ff:ff:ff
3: myint: <BROADCAST,NOARP> mtu 1500 qdisc noop state DOWN mode DEFAULT group default qlen 1000
    link/ether 3a:f9:b6:5a:4a:48 brd ff:ff:ff:ff:ff:ff
```

Next, let's bring the `myint` interface up using the `ip link set` command:

```
sudo ip link set dev myint up
```

You can verify the interface is now in the `UP` state:

```
sudo ip link show myint

Example output:
3: myint: <BROADCAST,NOARP,UP,LOWER_UP> mtu 1500 qdisc noop state UP mode DEFAULT group default qlen 1000
    link/ether 3a:f9:b6:5a:4a:48 brd ff:ff:ff:ff:ff:ff
```

Finally, let's delete the `myint` interface using the `ip link delete` command:

```
sudo ip link delete dev myint
```

Verify the interface has been removed:

```
sudo ip link show

Example output:
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN mode DEFAULT group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP mode DEFAULT group default qlen 1000
    link/ether 02:42:ac:11:00:02 brd ff:ff:ff:ff:ff:ff
```

The `myint` interface is no longer present in the output.
