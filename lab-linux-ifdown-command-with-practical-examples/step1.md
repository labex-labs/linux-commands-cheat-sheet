# Understand the Purpose of the ifdown Command

In this step, we will explore the purpose of the `ifdown` command in Linux. The `ifdown` command is used to disable or bring down a network interface on a Linux system.

The `ifdown` command is typically used in the following scenarios:

1. **Disabling a Network Interface**: You can use the `ifdown` command to disable a specific network interface, such as `eth0` or `wlan0`, which can be useful for troubleshooting network issues or temporarily disabling a network interface.

2. **Bringing Down a Network Interface**: The `ifdown` command can be used to bring down a network interface, which means that the interface will be deactivated and the network connection will be terminated.

3. **Preparing for Network Configuration Changes**: Before making changes to the network configuration, you may need to disable the network interface using the `ifdown` command to ensure that the changes are applied correctly.

Let's start by using the `ifdown` command to disable the `eth0` network interface:

```bash
sudo ifdown eth0
```

Example output:

```
Disabling network interface eth0...
```

In this example, we used the `sudo` command to execute the `ifdown` command with the `eth0` interface as the argument. This will disable the `eth0` network interface on the system.

To verify that the interface has been disabled, you can use the `ip link show` command:

```bash
ip link show eth0
```

Example output:

```
2: eth0: <BROADCAST,MULTICAST> mtu 1500 qdisc fq_codel state DOWN mode DEFAULT group default qlen 1000
    link/ether 02:42:ac:11:00:02 brd ff:ff:ff:ff:ff:ff
```

Notice that the `state` field now shows `DOWN`, indicating that the `eth0` network interface has been disabled.
