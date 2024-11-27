# Modify the Filesystem Behavior Using tune2fs

In this step, we will learn how to modify the behavior of the file system using the `tune2fs` command.

First, let's set the maximum number of mounts before a file system check is forced. By default, this value is set to -1, which means the file system will never be checked automatically. Let's change it to 30 mounts:

```bash
sudo tune2fs -c 30 /dev/sda1
```

Example output:

```
tune2fs 1.46.5 (30-Dec-2021)
Setting maximum mount count to 30
```

Now, let's set the interval between file system checks to 30 days:

```bash
sudo tune2fs -i 30d /dev/sda1
```

Example output:

```
tune2fs 1.46.5 (30-Dec-2021)
Setting interval between checks to 30 days
```

Next, let's set the reserved blocks percentage to 2%:

```bash
sudo tune2fs -m 2 /dev/sda1
```

Example output:

```
tune2fs 1.46.5 (30-Dec-2021)
Setting reserved blocks percentage to 2% (209715)
```

Finally, let's set the volume label to "my_filesystem":

```bash
sudo tune2fs -L my_filesystem /dev/sda1
```

Example output:

```
tune2fs 1.46.5 (30-Dec-2021)
Filesystem volume name changed to "my_filesystem"
```

You can verify the changes made to the file system using the `tune2fs -l /dev/sda1` command.
