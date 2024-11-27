# Using the quotaoff Command to Disable Disk Quotas

In this final step, you will learn how to use the `quotaoff` command to disable disk quotas on a Linux file system.

To disable disk quotas, you can use the following command:

```bash
sudo quotaoff -a
```

The `-a` option disables quotas for all file systems that have the `usrquota` and `grpquota` options set in the `/etc/fstab` file.

You can also disable quotas for a specific file system by specifying the mount point:

```bash
sudo quotaoff /
```

This command will disable quotas for the root file system (`/`).

After disabling the quotas, you can verify the status using the `repquota` command:

```bash
sudo repquota -a
```

The output should show that quotas are disabled for all file systems.
