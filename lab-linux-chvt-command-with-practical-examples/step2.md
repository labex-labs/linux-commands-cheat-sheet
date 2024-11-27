# Switch Between Virtual Terminals

In this step, you will learn how to switch between different virtual terminals (VTs) on your Linux system.

First, let's list the available virtual terminals using the `chvt` command:

```
sudo chvt -l
```

Example output:

```
VT1
VT2
VT3
VT4
VT5
VT6
```

As you can see, there are 6 virtual terminals available on this system.

To switch between these virtual terminals, you can use the following keyboard shortcuts:

- `Ctrl + Alt + F1`: Switch to virtual terminal 1
- `Ctrl + Alt + F2`: Switch to virtual terminal 2
- `Ctrl + Alt + F3`: Switch to virtual terminal 3
- And so on, up to `Ctrl + Alt + F6` for virtual terminal 6

Try switching between the virtual terminals using these keyboard shortcuts. For example, press `Ctrl + Alt + F2` to switch to virtual terminal 2.

You can also use the `chvt` command to switch between virtual terminals:

```
sudo chvt 3
```

This will switch to virtual terminal 3.

Example output:

```
$ sudo chvt 3
```

Notice how the terminal prompt changes as you switch between virtual terminals.
