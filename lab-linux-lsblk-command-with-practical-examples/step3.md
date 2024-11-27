# Explore Additional Options and Filters with lsblk

In this final step, we will explore some additional options and filters available with the `lsblk` command to customize the output and get more detailed information about the block devices on your system.

One useful option is `--output`, which allows you to specify the columns you want to display. For example, to see the device name, size, and mount point:

```bash
lsblk --output NAME,SIZE,MOUNTPOINT
```

This will display only the selected columns, making the output more concise and easier to read.

You can also use the `--output-all` option to see all the available columns:

```bash
lsblk --output-all
```

This will give you a comprehensive view of all the information available for each block device.

Another handy option is `--json`, which outputs the block device information in JSON format. This can be useful if you need to programmatically process the data:

```bash
lsblk --json
```

To filter the output by device type, you can use the `--types` option. For example, to only see partitions:

```bash
lsblk --types part
```

Or to see both partitions and logical volumes:

```bash
lsblk --types part,lvm
```

Finally, you can use the `--inverse` option to reverse the tree-like hierarchy and show the parent-child relationships in the opposite direction:

```bash
lsblk --inverse
```

This can be helpful when you're trying to understand the overall storage configuration of your system.

By combining these various options and filters, you can tailor the `lsblk` output to your specific needs and get a better understanding of the block devices on your Linux system.
