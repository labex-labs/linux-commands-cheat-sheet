# Modify Kernel Parameters Using sysctl Command

In this step, you will learn how to use the `sysctl` command to modify kernel parameters in your Linux system.

The `sysctl` command allows you to view and change the values of various kernel parameters at runtime. This can be useful for tuning system performance, security, and other aspects of your Linux system.

To modify a kernel parameter using `sysctl`, you can use the `-w` or `--write` option followed by the parameter name and the new value:

```
$ sudo sysctl -w net.ipv4.ip_forward=1
net.ipv4.ip_forward = 1
```

In this example, we're enabling IP forwarding by setting the `net.ipv4.ip_forward` parameter to `1`.

You can also use the `sysctl` command to modify multiple parameters at once:

```
$ sudo sysctl -w net.ipv4.ip_forward=1 vm.swappiness=10
net.ipv4.ip_forward = 1
vm.swappiness = 10
```

Here, we're enabling IP forwarding and setting the `vm.swappiness` parameter to `10`.

Example output:

```
$ sysctl net.ipv4.ip_forward vm.swappiness
net.ipv4.ip_forward = 1
vm.swappiness = 10
```

The changes made using the `sysctl` command are temporary and will be lost after a system reboot. To make the changes persistent, you'll need to modify the appropriate configuration file, which we'll cover in the next step.
