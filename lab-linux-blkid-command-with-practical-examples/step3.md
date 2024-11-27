# Querying Disk Attributes with blkid

In this final step, we will explore how to use the `blkid` command to query various disk attributes, such as the UUID, label, and partition information.

The `blkid` command can display detailed information about block devices, including their UUID, labels, and partition details. Let's try it out:

```bash
sudo blkid /dev/sda1
```

Example output:

```
/dev/sda1: LABEL="cloudimg-rootfs" UUID="d2d2b1f8-7f4f-4c2a-9d7f-d7f7d7f7d7f7" TYPE="ext4" PARTUUID="d2d2b1f8-01"
```

This command shows the UUID, label, filesystem type, and partition UUID for the `/dev/sda1` block device.

You can also use the `blkid` command to display information about all block devices on the system:

```bash
sudo blkid
```

Example output:

```
/dev/sda1: LABEL="cloudimg-rootfs" UUID="d2d2b1f8-7f4f-4c2a-9d7f-d7f7d7f7d7f7" TYPE="ext4" PARTUUID="d2d2b1f8-01"
/dev/loop0: TYPE="squashfs"
/dev/loop1: TYPE="squashfs"
/dev/loop2: TYPE="squashfs"
/dev/loop3: TYPE="squashfs"
/dev/loop4: TYPE="squashfs"
/dev/loop5: TYPE="squashfs"
/dev/loop6: TYPE="squashfs"
/dev/loop7: TYPE="squashfs"
```

This output shows the detailed information for all block devices on the system, including their device names, UUIDs, labels, filesystem types, and partition UUIDs.
