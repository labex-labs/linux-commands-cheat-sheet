# Load and Unload Kernel Modules

In this step, you will learn how to manually load and unload kernel modules on your Linux system.

## Loading a Kernel Module

To load a kernel module, you can use the `modprobe` command. Let's try loading the `vboxguest` module, which we saw in the previous steps:

```
$ sudo modprobe vboxguest
```

After running this command, you can verify that the `vboxguest` module is now loaded by running the `lsmod` command:

```
$ sudo lsmod | grep vboxguest
vboxguest              453376  0
```

## Unloading a Kernel Module

To unload a kernel module, you can use the `modprobe -r` command. Let's try unloading the `vboxguest` module:

```
$ sudo modprobe -r vboxguest
```

Now, if you run the `lsmod` command again, you should no longer see the `vboxguest` module in the output.

```
$ sudo lsmod | grep vboxguest
# (no output)
```

By using the `modprobe` and `modprobe -r` commands, you can manually load and unload kernel modules as needed, depending on the requirements of your system.
