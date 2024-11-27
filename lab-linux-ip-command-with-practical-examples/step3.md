# Troubleshoot Network Issues Using the ip Command

In this step, you will learn how to use the `ip` command to troubleshoot network issues.

Let's start by checking the routing table using the `ip route` command:

```
sudo ip route show

Example output:
default via 172.17.0.1 dev eth0
172.17.0.0/16 dev eth0 proto kernel scope link src 172.17.0.2
```

This shows the default route and the route for the local network interface.

Next, let's simulate a network issue by disabling the `eth0` interface:

```
sudo ip link set dev eth0 down
```

Now, try to ping a remote host:

```
ping 8.8.8.8
```

You should see that the ping fails, as the network interface is down.

To troubleshoot further, you can use the `ip addr` command to check the IP address configuration:

```
sudo ip addr show eth0

Example output:
2: eth0: <BROADCAST,MULTICAST> mtu 1500 qdisc fq_codel state DOWN group default qlen 1000
    link/ether 02:42:ac:11:00:02 brd ff:ff:ff:ff:ff:ff
    inet 172.17.0.2/16 brd 172.17.255.255 scope global eth0
       valid_lft forever preferred_lft forever
    inet6 fe80::42:acff:fe11:2/64 scope link
       valid_lft forever preferred_lft forever
```

The output shows that the `eth0` interface is in the `DOWN` state.

To bring the interface back up, use the `ip link set` command:

```
sudo ip link set dev eth0 up
```

Verify the interface is now in the `UP` state:

```
sudo ip addr show eth0

Example output:
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 02:42:ac:11:00:02 brd ff:ff:ff:ff:ff:ff
    inet 172.17.0.2/16 brd 172.17.255.255 scope global eth0
       valid_lft forever preferred_lft forever
    inet6 fe80::42:acff:fe11:2/64 scope link
       valid_lft forever preferred_lft forever
```

Now, try pinging the remote host again, and the ping should succeed.
