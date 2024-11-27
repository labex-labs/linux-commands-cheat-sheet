# Configure Static Routes Using the route Command

In this step, you will learn how to configure static routes using the `route` command. Static routes are manually defined routes that are added to the routing table and take precedence over dynamic routes.

Let's start by adding a static route to the routing table:

```
sudo route add -net 192.168.2.0 netmask 255.255.255.0 gw 10.0.0.2
```

This command adds a static route to the `192.168.2.0/24` network, with a gateway of `10.0.0.2`.

You can verify the new route by running the `route -n` command:

```
sudo route -n
```

Example output:

```
Kernel IP routing table
Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
0.0.0.0         172.17.0.1      0.0.0.0         UG    100    0        0 eth0
10.0.0.2        0.0.0.0         255.255.255.255 UH    0      0        0 eth0
192.168.1.0     0.0.0.0         255.255.255.0   U     0      0        0 eth0
192.168.2.0     10.0.0.2        255.255.255.0   UG    0      0        0 eth0
172.17.0.0      0.0.0.0         255.255.0.0     U     0      0        0 eth0
```

You can see the new static route to the `192.168.2.0/24` network with the gateway `10.0.0.2`.

To make the static route persistent across reboots, you can add it to the `/etc/network/interfaces` file:

```
sudo nano /etc/network/interfaces
```

Add the following lines to the file:

```
up route add -net 192.168.2.0 netmask 255.255.255.0 gw 10.0.0.2
```

This will ensure that the static route is added automatically when the network interface is brought up.
