# Create and Manage Volume Labels Using the mlabel Command

In this step, you will learn how to create and manage volume labels using the `mlabel` command.

First, let's create a new volume label for a file system:

```
sudo mlabel -c "My Data Volume" /dev/sdb1
Example output:
Volume label set to "My Data Volume"
```

This command sets the volume label of the `/dev/sdb1` file system to "My Data Volume".

Now, let's verify the current volume label:

```
sudo mlabel -s /dev/sdb1
Example output:
Volume label is "My Data Volume"
```

The `mlabel -s` command displays the current volume label of the specified file system.

To change an existing volume label, you can use the `-c` option again:

```
sudo mlabel -c "Updated Data Volume" /dev/sdb1
Example output:
Volume label set to "Updated Data Volume"
```

This command updates the volume label of the `/dev/sdb1` file system to "Updated Data Volume".

Finally, let's remove the volume label:

```
sudo mlabel -r /dev/sdb1
Example output:
Volume label removed
```

The `mlabel -r` command removes the volume label from the specified file system.

Remember, the `mlabel` command operates on the file system level, so you need to specify the volume or device you want to work with.
