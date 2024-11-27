# Configuring Network Interfaces with nmcli

In this step, we will learn how to use the `nmcli` command to configure network interfaces on our Linux system.

First, let's list all the available network interfaces on our system:

```bash
nmcli device status
```

Example output:

```
DEVICE  TYPE      STATE      CONNECTION
eth0    ethernet  connected  eth0
lo      loopback  unmanaged  --
```

As you can see, we have an Ethernet interface `eth0` that is currently connected, and a loopback interface `lo` that is unmanaged.

Now, let's configure a new Ethernet connection using `nmcli`:

```bash
sudo nmcli connection add type ethernet con-name my-ethernet ifname eth0 ip4 192.168.1.100/24 gw4 192.168.1.1
```

This command creates a new Ethernet connection named `my-ethernet` and associates it with the `eth0` interface. We also set the IPv4 address to `192.168.1.100/24` and the gateway to `192.168.1.1`.

To activate the new connection, run:

```bash
sudo nmcli connection up my-ethernet
```

You should see the connection status change to "connected".

To verify the configuration, you can run:

```bash
nmcli device status
nmcli connection show my-ethernet
```

The output should show the `eth0` interface as "connected" and the details of the `my-ethernet` connection.
