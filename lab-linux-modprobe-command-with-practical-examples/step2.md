# Load Kernel Modules with modprobe

In this step, we will learn how to use the `modprobe` command to load kernel modules in Linux.

First, let's check the available kernel modules that can be loaded:

```bash
sudo modprobe -l
```

This command will list all the available kernel modules that can be loaded on the system.

Now, let's try to load a specific kernel module using `modprobe`:

```bash
sudo modprobe nfs
```

This command will load the `nfs` kernel module, which is responsible for providing support for the Network File System (NFS) protocol.

If the module is successfully loaded, you won't see any output. To verify that the module has been loaded, you can run `lsmod` again:

```bash
lsmod | grep nfs
```

Example output:

```
nfs                   393216  0
sunrpc                393216  1 nfs
```

The output shows that the `nfs` and `sunrpc` modules have been loaded. The `sunrpc` module is a dependency of the `nfs` module, and `modprobe` automatically loaded it as well.

You can also load a module with specific parameters using the `modprobe` command. For example, to load the `e1000e` network driver module with the `InterruptThrottleRate` parameter set to `3000`, you can use the following command:

```bash
sudo modprobe e1000e InterruptThrottleRate=3000
```

This will load the `e1000e` module with the specified parameter.

Remember that the `modprobe` command will only load the module if it is available in the system's module search path, which is typically `/lib/modules/<kernel_version>`. If the module is not found, you may need to install the corresponding package or ensure that the module is available in the system.
