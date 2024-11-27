# Configure Network Interfaces Using ifconfig

In this final step, we will learn how to configure network interfaces using the `ifconfig` command. This includes assigning IP addresses, setting the subnet mask, and enabling/disabling interfaces.

Let's start by creating a new network interface:

```bash
# Create a new virtual network interface
sudo ifconfig enp0s8 192.168.2.100 netmask 255.255.255.0 up
```

This command creates a new network interface named `enp0s8` and assigns it the IP address `192.168.2.100` with a subnet mask of `255.255.255.0`. The `up` option enables the interface.

You can verify the new interface configuration using the `ifconfig` command:

```bash
sudo ifconfig enp0s8
```

Example output:

```
enp0s8: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.2.100  netmask 255.255.255.0  broadcast 192.168.2.255
        ether 02:42:ac:11:00:03  txqueuelen 1000  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 8  bytes 648 (648.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
```

Now, let's disable the interface:

```bash
# Disable the enp0s8 interface
sudo ifconfig enp0s8 down
```

To re-enable the interface, use the `up` option:

```bash
# Enable the enp0s8 interface
sudo ifconfig enp0s8 up
```

You can also change the MAC address of an interface using the `hw ether` option:

```bash
# Change the MAC address of the enp0s8 interface
sudo ifconfig enp0s8 hw ether 00:11:22:33:44:55
```

Finally, let's remove the interface:

```bash
# Remove the enp0s8 interface
sudo ifconfig enp0s8 down
sudo ip link delete enp0s8
```

This command first disables the interface and then deletes it using the `ip link delete` command.
