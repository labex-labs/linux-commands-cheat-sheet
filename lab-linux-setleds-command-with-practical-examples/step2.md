# Modify Keyboard LED States Using setleds

In this step, we will learn how to use the `setleds` command to modify the state of the keyboard LEDs.

First, let's check the current state of the keyboard LEDs:

```bash
setleds -v
```

Example output:

```
Current led state:   00000000
```

As we can see, all the LEDs are currently in the "off" state.

Now, let's turn on the Num Lock LED:

```bash
setleds +num
```

Example output:

```
Led state set to 00000002
```

The output shows that the Num Lock LED (bit 1) is now in the "on" state.

To turn off the Num Lock LED, we can use the `-num` option:

```bash
setleds -num
```

Example output:

```
Led state set to 00000000
```

The Num Lock LED is now turned off, and the output shows that all LEDs are in the "off" state.

We can also toggle multiple LEDs at once. For example, to turn on the Caps Lock and Scroll Lock LEDs, we can use the following command:

```bash
setleds +caps +scroll
```

Example output:

```
Led state set to 00000005
```

The output shows that the Caps Lock (bit 0) and Scroll Lock (bit 2) LEDs are now in the "on" state.

To turn off the Caps Lock and Scroll Lock LEDs, we can use the `-caps -scroll` options:

```bash
setleds -caps -scroll
```

Example output:

```
Led state set to 00000000
```

All the LEDs are now in the "off" state.
