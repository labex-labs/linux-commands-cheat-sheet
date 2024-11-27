# Retrieve the Unique Host Identifier

In this step, we will learn how to retrieve the unique host identifier using the `hostid` command.

First, let's verify that the `hostid` command is available on our system:

```bash
which hostid
```

Example output:

```
/usr/bin/hostid
```

The output shows that the `hostid` command is located in the `/usr/bin` directory, indicating that it is installed and ready to use.

Now, let's run the `hostid` command to retrieve the unique host identifier:

```bash
hostid
```

Example output:

```
8b1a0d42
```

The output shows the 32-bit hexadecimal value that represents the unique identifier for the current host.

You can also store the `hostid` value in a variable for later use:

```bash
HOST_ID=$(hostid)
echo "The host ID is: $HOST_ID"
```

Example output:

```
The host ID is: 8b1a0d42
```

By storing the `hostid` value in a variable, you can use it in scripts or other applications that require the unique host identifier.
