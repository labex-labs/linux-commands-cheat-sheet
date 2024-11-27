# Creating a Loopback Device

In this step, we will create a loopback device using the `losetup` command. We will first create a file that will be used as the backing storage for the loopback device, and then attach it to a loopback device.

Let's start by creating a 100 MB file using the `dd` command:

```bash
sudo dd if=/dev/zero of=~/project/disk.img bs=1M count=100
```

Example output:

```
100+0 records in
100+0 records out
104857600 bytes (105 MB, 100 MiB) copied, 0.0642741 s, 1.6 GB/s
```

Now, let's create a loopback device and attach the `disk.img` file to it:

```bash
sudo losetup /dev/loop0 ~/project/disk.img
```

To verify that the loopback device was created and attached successfully, run the following command:

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

You can see that the `disk.img` file is now attached to the `/dev/loop0` device.
