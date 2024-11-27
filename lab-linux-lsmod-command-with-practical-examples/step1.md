# Understand the Purpose of lsmod Command

In this step, you will learn about the purpose of the `lsmod` command in Linux. The `lsmod` command is used to display information about the kernel modules that are currently loaded on the system.

Kernel modules are pieces of code that can be loaded and unloaded into the kernel as needed, providing additional functionality to the operating system. The `lsmod` command allows you to see which kernel modules are currently active and in use.

To run the `lsmod` command, simply execute the following in your terminal:

```
$ sudo lsmod
```

Example output:

```
Module                  Size  Used by
vboxguest              453376  0
vboxsf                  86016  1
```

The output shows the name of each loaded kernel module, the size of the module in bytes, and the number of other modules that are using this module.

In the example output, we can see that the `vboxguest` and `vboxsf` modules are currently loaded. These modules are likely related to the VirtualBox guest additions, which provide additional functionality for a VirtualBox virtual machine.

By understanding the purpose of the `lsmod` command, you can better manage and troubleshoot the kernel modules on your Linux system.
