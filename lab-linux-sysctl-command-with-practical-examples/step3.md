# Persist sysctl Configuration Changes Across Reboots

In the previous step, you learned how to use the `sysctl` command to modify kernel parameters. However, these changes are temporary and will be lost after a system reboot. In this step, you will learn how to make the `sysctl` configuration changes persistent across reboots.

To persist `sysctl` configuration changes, you need to modify the `/etc/sysctl.conf` file. This file is read by the kernel at boot time, and the specified kernel parameters are applied.

First, open the `/etc/sysctl.conf` file using a text editor:

```
$ sudo nano /etc/sysctl.conf
```

Then, add the kernel parameters you want to persist, one per line, in the following format:

```
parameter=value
```

For example, to persist the changes made in the previous step:

```
net.ipv4.ip_forward=1
vm.swappiness=10
```

Save the file and exit the text editor.

To apply the changes immediately, without waiting for a reboot, run the following command:

```
$ sudo sysctl -p
```

This will load the new configuration from the `/etc/sysctl.conf` file and apply the changes.

Example output:

```
$ sudo sysctl -p
net.ipv4.ip_forward = 1
vm.swappiness = 10
```

Now, the kernel parameter changes will persist across system reboots.
