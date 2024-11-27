# Retrieve Network Interface Information

In this step, we will use the ethtool command to retrieve information about the network interfaces on our system.

First, let's list all the available network interfaces:

```bash
ip link show
```

Example output:

```
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN mode DEFAULT group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP mode DEFAULT group default qlen 1000
    link/ether 02:42:ac:11:00:02 brd ff:ff:ff:ff:ff:ff
```

Now, let's use the ethtool command to retrieve detailed information about the `eth0` interface:

```bash
ethtool eth0
```

Example output:

```
Settings for eth0:
        Supported ports: [ TP ]
        Supported link modes:   10baseT/Half 10baseT/Full
                                100baseT/Half 100baseT/Full
                                1000baseT/Full
        Supported pause frame use: No
        Supports auto-negotiation: Yes
        Advertised link modes:  10baseT/Half 10baseT/Full
                                100baseT/Half 100baseT/Full
                                1000baseT/Full
        Advertised pause frame use: No
        Advertised auto-negotiation: Yes
        Speed: 1000Mb/s
        Duplex: Full
        Port: Twisted Pair
        PHYAD: 0
        Transceiver: internal
        Auto-negotiation: on
        MDI-X: off (auto)
        Supports Wake-on: pumbg
        Wake-on: d
        Current message level: 0x00000007 (7)
        Link detected: yes
```

This output provides detailed information about the `eth0` interface, including the supported link modes, speed, duplex, and other parameters.

You can also use the ethtool command to retrieve specific information about the interface, such as the link state, driver information, and more. For example:

```bash
ethtool --show-link eth0
ethtool --driver eth0
```

In the next step, we will learn how to modify the network interface settings using the ethtool command.
