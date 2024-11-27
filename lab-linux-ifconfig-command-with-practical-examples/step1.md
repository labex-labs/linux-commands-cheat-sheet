# Understand the Purpose of the ifconfig Command

In this step, we will explore the purpose and importance of the `ifconfig` command in Linux. The `ifconfig` command is a powerful tool used to configure and manage network interfaces on a Linux system.

The primary purpose of the `ifconfig` command is to:

1. **Display Network Interface Information**: The `ifconfig` command allows you to view the current status and configuration of your network interfaces, such as the IP address, subnet mask, and MAC address.

2. **Configure Network Interfaces**: You can use `ifconfig` to configure various network interface settings, such as assigning an IP address, setting the subnet mask, and enabling or disabling an interface.

3. **Troubleshoot Network Issues**: The `ifconfig` command can be helpful in troubleshooting network-related problems, as it provides detailed information about the network interfaces on your system.

Let's start by running the `ifconfig` command to see the current network interface configuration:

```bash
sudo ifconfig
```

Example output:

```
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 172.17.0.2  netmask 255.255.0.0  broadcast 172.17.255.255
        ether 02:42:ac:11:00:02  txqueuelen 0  (Ethernet)
        RX packets 8  bytes 648 (648.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 8  bytes 648 (648.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
```

This output shows the configuration of the `eth0` network interface, including its IP address, subnet mask, MAC address, and various packet statistics.
