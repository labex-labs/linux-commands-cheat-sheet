# Manage Network Interface Configuration with accton

In this step, we will learn how to use the `accton` command to manage network interface configuration on your Linux system.

First, let's check the current network interface configuration:

```bash
ip addr show
```

This will display all the network interfaces and their associated IP addresses.

Now, let's enable accounting for the network interface configuration changes:

```bash
sudo accton /var/log/account/pacct
```

This will start the accounting system and store the network configuration changes in the `/var/log/account/pacct` file.

To simulate a network configuration change, let's add a new IP address to one of the network interfaces:

```bash
sudo ip addr add 192.168.1.100/24 dev eth0
```

This adds a new IP address `192.168.1.100` to the `eth0` network interface.

Now, let's check the accounting log to see the changes:

```bash
sudo accton
sudo dump -f /var/log/account/pacct
```

The `dump` command will display the accounting information, including the network configuration changes you just made.

To stop the accounting system, run:

```bash
sudo accton
```

This will disable the accounting system and stop collecting network configuration data.
