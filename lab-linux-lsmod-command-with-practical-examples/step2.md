# Explore the Output of lsmod Command

In this step, you will learn how to interpret the output of the `lsmod` command and understand the information it provides about the loaded kernel modules.

Let's start by running the `lsmod` command again:

```
$ sudo lsmod
```

Example output:

```
Module                  Size  Used by
vboxguest              453376  0
vboxsf                  86016  1
```

The output of the `lsmod` command consists of three columns:

1. **Module**: The name of the kernel module.
2. **Size**: The size of the kernel module in bytes.
3. **Used by**: The number of other kernel modules that are using this module.

In the example output, we can see that the `vboxguest` and `vboxsf` modules are loaded. The `vboxguest` module has a size of 453,376 bytes and is not being used by any other modules. The `vboxsf` module has a size of 86,016 bytes and is being used by 1 other module.

The "Used by" column can help you understand the dependencies between different kernel modules. If a module has a non-zero value in the "Used by" column, it means that other modules are relying on the functionality provided by this module.

Understanding the output of the `lsmod` command can be helpful when troubleshooting issues related to kernel modules or when trying to optimize the performance of your Linux system.
