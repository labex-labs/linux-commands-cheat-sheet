# Summary

In this lab, you first learned about the purpose and syntax of the `ifup` command in Linux, which is used to activate and configure network interfaces. You explored how to check the current status of network interfaces using the `ip link show` command, and then learned the basic syntax of the `ifup` command to activate a specific interface, such as `eth0`.

Next, you learned how to configure a network interface using the `ifup` command. You created a new network interface configuration file in `/etc/network/interfaces` and added a configuration for a new interface named `eth1`, specifying the IP address, netmask, and gateway. You then used the `ifup` command to activate the `eth1` interface based on the new configuration.
