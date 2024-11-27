# Explore the Basic Syntax and Options of ifconfig

In this step, we will dive deeper into the basic syntax and available options of the `ifconfig` command. Understanding the command's structure and options will help you effectively configure and manage your network interfaces.

The basic syntax of the `ifconfig` command is as follows:

```bash
sudo ifconfig [interface] [options]
```

Here's a breakdown of the common options you can use with `ifconfig`:

1. **Display Interface Information**:

   - `sudo ifconfig [interface]`: Display the configuration details of the specified network interface.
   - `sudo ifconfig`: Display the configuration details of all network interfaces.

2. **Assign IP Address**:

   - `sudo ifconfig [interface] [IP_address] netmask [netmask]`: Assign an IP address and subnet mask to the specified interface.

3. **Enable/Disable Interface**:

   - `sudo ifconfig [interface] up`: Enable the specified network interface.
   - `sudo ifconfig [interface] down`: Disable the specified network interface.

4. **Set MTU (Maximum Transmission Unit)**:

   - `sudo ifconfig [interface] mtu [value]`: Set the MTU value for the specified interface.

5. **Set MAC Address**:
   - `sudo ifconfig [interface] hw ether [MAC_address]`: Set the MAC address for the specified interface.

Let's try some of these options:

```bash
# Display information about the eth0 interface
sudo ifconfig eth0
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

```bash
# Disable the eth0 interface
sudo ifconfig eth0 down
```

```bash
# Enable the eth0 interface
sudo ifconfig eth0 up
```

```bash
# Assign a new IP address and subnet mask to the eth0 interface
sudo ifconfig eth0 192.168.1.100 netmask 255.255.255.0
```
