# Identifying Filesystem Types with blkid

In this step, we will learn how to use the `blkid` command to identify the filesystem types of block devices.

The `blkid` command can be used to query the filesystem type of a specific block device. Let's try it out:

```bash
sudo blkid /dev/sda1
```

Example output:

```
/dev/sda1: LABEL="cloudimg-rootfs" UUID="d2d2b1f8-7f4f-4c2a-9d7f-d7f7d7f7d7f7" TYPE="ext4" PARTUUID="d2d2b1f8-01"
```

The output shows that the `/dev/sda1` block device has an `ext4` filesystem type.

You can also use the `-t` option to filter the output and only show block devices with a specific filesystem type:

```bash
sudo blkid -t TYPE=ext4
```

Example output:

```
/dev/sda1: LABEL="cloudimg-rootfs" UUID="d2d2b1f8-7f4f-4c2a-9d7f-d7f7d7f7d7f7" TYPE="ext4" PARTUUID="d2d2b1f8-01"
```

This command will only display block devices with the `ext4` filesystem type.

Similarly, you can use the `-t` option to filter by other attributes, such as the filesystem label or UUID:

```bash
sudo blkid -t LABEL="cloudimg-rootfs"
```

Example output:

```
/dev/sda1: LABEL="cloudimg-rootfs" UUID="d2d2b1f8-7f4f-4c2a-9d7f-d7f7d7f7d7f7" TYPE="ext4" PARTUUID="d2d2b1f8-01"
```

This command will only display the block device with the "cloudimg-rootfs" label.
