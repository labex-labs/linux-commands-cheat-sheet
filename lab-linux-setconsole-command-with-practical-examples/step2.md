# Modify the System Console Device

In this step, you will learn how to modify the system console device on your Linux system.

By default, the system console is typically set to the first virtual terminal (VT1), but you can change it to a different VT or even to a serial port. This can be useful in certain scenarios, such as when you need to access the console remotely or when you want to redirect the console output to a file.

Let's start by checking the current system console device:

```bash
sudo setconsole -g
```

Example output:

```
/dev/tty1
```

Now, let's try changing the console device to the second virtual terminal (VT2):

```bash
sudo setconsole /dev/tty2
```

To verify the change, you can check the current console device again:

```bash
sudo setconsole -g
```

Example output:

```
/dev/tty2
```

You can see that the console device has been successfully changed to `/dev/tty2`.

To restore the console to the default VT1, you can use the following command:

```bash
sudo setconsole /dev/tty1
```
