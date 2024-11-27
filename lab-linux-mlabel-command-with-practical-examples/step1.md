# Understand the Purpose and Syntax of the mlabel Command

In this step, you will learn about the purpose and syntax of the `mlabel` command in Linux. The `mlabel` command is used to create, change, or remove volume labels on file systems.

First, let's explore the basic syntax of the `mlabel` command:

```
sudo mlabel [options] [volume]
```

The `[options]` can include:

- `-s`: Display the current volume label
- `-c`: Create a new volume label
- `-r`: Remove the current volume label
- `-i`: Ignore errors

To see the current volume label of a file system, you can use the following command:

```
sudo mlabel -s /dev/sdb1
Example output:
Volume label is "My Data"
```

This command displays the current volume label of the `/dev/sdb1` file system.

To create a new volume label, you can use the `-c` option:

```
sudo mlabel -c "My New Label" /dev/sdb1
Example output:
Volume label set to "My New Label"
```

This command sets the volume label of the `/dev/sdb1` file system to "My New Label".

To remove the current volume label, you can use the `-r` option:

```
sudo mlabel -r /dev/sdb1
Example output:
Volume label removed
```

This command removes the volume label from the `/dev/sdb1` file system.

Remember, the `mlabel` command operates on the file system level, so you need to specify the volume or device you want to work with.
