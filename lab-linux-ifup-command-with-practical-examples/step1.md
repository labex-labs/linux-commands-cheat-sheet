# Understand the Purpose and Syntax of the ifup Command

In this step, you will learn about the purpose and syntax of the `ifup` command in Linux. The `ifup` command is used to activate and configure a network interface on a Linux system.

First, let's check the current status of the network interfaces on your system using the `ip link show` command:

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

The `ifup` command is used to activate and configure a network interface. The basic syntax of the `ifup` command is:

```bash
sudo ifup <interface>
```

Replace `<interface>` with the name of the network interface you want to activate, such as `eth0` or `wlan0`.

For example, to activate the `eth0` interface, you would run:

```bash
sudo ifup eth0
```

This will bring up the `eth0` interface and configure it based on the settings in the network configuration files, such as `/etc/network/interfaces`.

The `ifup` command can also be used to activate a network interface at system startup by adding the interface name to the `/etc/network/interfaces` file.
