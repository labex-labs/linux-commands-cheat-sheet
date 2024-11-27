# Understand the mesg Command

In this step, we will learn about the `mesg` command in Linux. The `mesg` command is used to control the permission to send messages to the user's terminal. It allows users to receive or reject messages sent by other users on the same system.

First, let's check the current message permission status using the `mesg` command:

```bash
mesg
```

Example output:

```
is y
```

The output `is y` indicates that the user is currently able to receive messages.

To deny message receiving, use the `mesg n` command:

```bash
mesg n
```

Now, let's verify the permission change:

```bash
mesg
```

Example output:

```
is n
```

The output `is n` indicates that the user is now unable to receive messages.

To allow message receiving again, use the `mesg y` command:

```bash
mesg y
```

Verify the permission change:

```bash
mesg
```

Example output:

```
is y
```

The output `is y` confirms that the user can now receive messages.
