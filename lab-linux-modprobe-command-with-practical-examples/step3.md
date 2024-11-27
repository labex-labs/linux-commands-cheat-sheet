# Remove Kernel Modules with modprobe

In this step, we will learn how to use the `modprobe` command to remove kernel modules in Linux.

First, let's load a kernel module that we can later remove:

```bash
sudo modprobe nfs
```

This will load the `nfs` kernel module.

Now, to remove the `nfs` module, we can use the `-r` (or `--remove`) option with `modprobe`:

```bash
sudo modprobe -r nfs
```

This command will remove the `nfs` kernel module from the system.

You can verify that the module has been removed by running `lsmod` and checking if the `nfs` module is no longer listed:

```bash
lsmod | grep nfs
```

If the module has been successfully removed, you should not see any output.

Sometimes, a kernel module may have dependencies, and you need to remove those dependencies as well. You can use the `-a` (or `--all-modules`) option with `modprobe -r` to remove the target module and all its dependencies:

```bash
sudo modprobe -r -a nfs
```

This command will remove the `nfs` module and all its dependencies.

Keep in mind that you should only remove kernel modules that you no longer need, as removing essential modules may cause system instability or prevent the system from booting properly.
