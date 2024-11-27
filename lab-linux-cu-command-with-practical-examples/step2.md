# Establishing a Connection Using the cu Command

In this step, we will learn how to establish a connection using the `cu` command. The `cu` command can be used to connect to remote systems over a serial line or modem.

To establish a connection, we can use the following command:

```bash
sudo cu -l /dev/ttyUSB0 -s 9600
```

Here, the `-l` option specifies the serial device to use, and the `-s` option specifies the baud rate. You may need to adjust these options based on your specific setup.

Once the connection is established, you should see a prompt indicating that you are connected to the remote system. You can then interact with the remote system as if you were directly logged in.

To exit the `cu` session, type `~.` (tilde followed by a period) and press Enter.

Example output:

```
Connected.
login:
```

Now, let's try to establish a connection using the `cu` command.
