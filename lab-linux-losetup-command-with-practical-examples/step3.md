# Attaching and Detaching a Loopback Device

In this step, we will learn how to attach and detach a loopback device using the `losetup` command.

First, let's verify that the loopback device we created in the previous step is still attached:

```bash
sudo losetup -a
```

Example output:

```
/dev/loop0: /home/labex/project/disk.img
/dev/loop1: []: (null)
/dev/loop2: []: (null)
...
```

To detach the loopback device, use the following command:

```bash
sudo losetup -d /dev/loop0
```

Now, let's verify that the loopback device is no longer attached:

```bash
sudo losetup -a
```

Example output:

```
/dev/loop1: []: (null)
/dev/loop2: []: (null)
...
```

To reattach the loopback device, use the following command:

```bash
sudo losetup /dev/loop0 ~/project/disk.img
```

Verify that the loopback device is attached again:

```bash
sudo losetup -a
```

Example output:

```
/dev/loop0: /home/labex/project/disk.img
/dev/loop1: []: (null)
/dev/loop2: []: (null)
...
```
