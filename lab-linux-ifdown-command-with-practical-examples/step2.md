# Disable a Network Interface Using the ifdown Command

In this step, we will learn how to disable a network interface using the `ifdown` command.

First, let's check the current status of the `eth0` network interface:

```bash
ip link show eth0
```

Example output:

```
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP mode DEFAULT group default qlen 1000
    link/ether 02:42:ac:11:00:02 brd ff:ff:ff:ff:ff:ff
```

Notice that the `state` field shows `UP`, indicating that the `eth0` interface is currently active.

Now, let's use the `ifdown` command to disable the `eth0` interface:

```bash
sudo ifdown eth0
```

Example output:

```
Disabling network interface eth0...
```

To verify that the `eth0` interface has been disabled, let's check the status again:

```bash
ip link show eth0
```

Example output:

```
2: eth0: <BROADCAST,MULTICAST> mtu 1500 qdisc fq_codel state DOWN mode DEFAULT group default qlen 1000
    link/ether 02:42:ac:11:00:02 brd ff:ff:ff:ff:ff:ff
```

Notice that the `state` field now shows `DOWN`, indicating that the `eth0` interface has been successfully disabled.
