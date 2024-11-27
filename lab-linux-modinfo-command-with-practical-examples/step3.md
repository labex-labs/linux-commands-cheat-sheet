# Troubleshoot Module Issues with modinfo

In this final step, we will learn how to use the `modinfo` command to troubleshoot issues related to kernel modules.

Let's start by trying to load a module that doesn't exist:

```bash
sudo modprobe non_existent_module
```

Example output:

```
modprobe: FATAL: Module non_existent_module not found in directory /lib/modules/5.15.0-1023-aws
```

As you can see, the `modprobe` command fails to load the `non_existent_module` because it doesn't exist on the system.

Now, let's try to get more information about this issue using the `modinfo` command:

```bash
sudo modinfo non_existent_module
```

Example output:

```
modinfo: ERROR: Module non_existent_module not found.
```

The `modinfo` command also fails to find any information about the `non_existent_module`, confirming that the module doesn't exist on the system.

If you encounter issues with a specific kernel module, you can use the `modinfo` command to troubleshoot the problem. For example, if a module is not loading correctly, you can use `modinfo` to check the module's dependencies, parameters, and other relevant information to identify the issue.

Let's try an example with a real module, such as the `ext4` module:

```bash
sudo modinfo ext4
```

Example output:

```
filename:       /lib/modules/5.15.0-1023-aws/kernel/fs/ext4/ext4.ko
author:         Remy Card, Stephen Tweedie, Andrew Morton, Jakub Jelinek, et al.
description:    Fourth Extended Filesystem
license:        GPL
alias:          fs-ext4
alias:          ext4
alias:          ext3
alias:          ext2
depends:        mbcache,jbd2
retpoline:      Y
name:           ext4
vermagic:       5.15.0-1023-aws SMP mod_unload modversions
parm:           abort:behaviour when a metadata write fails (int)
parm:           barrier:default barrier usage (int)
parm:           dioread_nolock:use delalloc with no lock (int)
parm:           max_dir_size_kb:max size of directories (unsigned long)
parm:           min_batch_time:min time between delayed allocation attempts (us) (int)
parm:           max_batch_time:max time between delayed allocation attempts (us) (int)
```

The output provides detailed information about the `ext4` module, including its dependencies, parameters, and other relevant details. This information can be useful when troubleshooting issues related to the `ext4` module or other kernel modules on your system.
