# Understand the Purpose of setleds Command

In this step, we will explore the purpose and usage of the `setleds` command in Linux. The `setleds` command is used to control the state of the keyboard LED indicators, such as the Caps Lock, Num Lock, and Scroll Lock LEDs.

The `setleds` command allows you to:

- Query the current state of the keyboard LEDs
- Set the state of the keyboard LEDs
- Save the LED state as the default for future sessions

This command is useful for automating tasks that require specific LED states, such as setting the Num Lock LED to be on by default when a terminal session starts.

Let's start by checking the current state of the keyboard LEDs:

```bash
setleds -v
```

Example output:

```
Current led state:   00000000
```

The output shows the current state of the keyboard LEDs in binary format, where each bit represents the state of a specific LED (Scroll Lock, Num Lock, Caps Lock).

Now, let's turn on the Caps Lock LED:

```bash
setleds +caps
```

Example output:

```
Led state set to 00000001
```

The `+caps` option sets the Caps Lock LED to the "on" state.

To turn off the Caps Lock LED, you can use the `-caps` option:

```bash
setleds -caps
```

Example output:

```
Led state set to 00000000
```

The `setleds` command can also be used to set the default LED state for future sessions. For example, to make the Num Lock LED turn on by default, you can use the following command:

```bash
setleds +num
```

This will save the Num Lock LED state as the default, so the next time you log in, the Num Lock LED will be turned on automatically.
