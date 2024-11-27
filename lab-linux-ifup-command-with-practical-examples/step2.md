# Configure a Network Interface Using the ifup Command

In this step, you will learn how to configure a network interface using the `ifup` command.

First, let's create a new network interface configuration file. Run the following command to open the `/etc/network/interfaces` file in the nano editor:

```bash
sudo nano /etc/network/interfaces
```

Add the following configuration for a new interface named `eth1`:

```
auto eth1
iface eth1 inet static
    address 192.168.1.100
    netmask 255.255.255.0
    gateway 192.168.1.1
```

This configuration sets the IP address, netmask, and gateway for the `eth1` interface.

Save the file and exit the nano editor.

Now, let's bring up the `eth1` interface using the `ifup` command:

```bash
sudo ifup eth1
```

Example output:

```
Internet Systems Consortium DHCP Client 4.4.1
Copyright 2004-2018 Internet Systems Consortium.
All rights reserved.
For info, please visit https://www.isc.org/software/dhcp/

Listening on LPF/eth1/02:42:ac:11:00:03
Sending on   LPF/eth1/02:42:ac:11:00:03
Sending on   Socket/fallback
DHCPDISCOVER on eth1 to 255.255.255.255 port 67 interval 3
DHCPOFFER from 172.17.0.1
DHCPREQUEST on eth1 to 255.255.255.255 port 67
DHCPACK from 172.17.0.1
bound to 192.168.1.100 -- renewal in 43200 seconds.
```

The output shows that the `eth1` interface has been successfully configured with the specified IP address, netmask, and gateway.
