# Transferring Files Using the tftp Client

In this step, we will learn how to use the tftp client to transfer files to and from the tftp server we configured in the previous step.

First, let's create a sample file to transfer:

```
$ echo "This is a test file." > ~/project/test.txt
```

Now, let's use the tftp client to upload the `test.txt` file to the tftp server:

```
$ tftp 192.168.1.100
tftp> put ~/project/test.txt
Sent 21 bytes in 0.0 seconds
```

In the example above, we first connected to the tftp server at the IP address `192.168.1.100`, and then used the `put` command to upload the `test.txt` file from the local `~/project` directory to the tftp server.

You can also use the `get` command to download a file from the tftp server:

```
tftp> get example.txt ~/project/downloaded.txt
Received 123 bytes in 0.0 seconds
```

In this example, we downloaded the `example.txt` file from the tftp server and saved it as `downloaded.txt` in the local `~/project` directory.

The tftp client also supports other commands, such as `mode` to set the transfer mode (binary or ASCII), `verbose` to enable verbose output, and `quit` to exit the tftp client.

Let's try one more example, this time using the `binary` mode to transfer a binary file:

```
tftp> binary
tftp> put ~/project/image.jpg
Sent 456789 bytes in 0.5 seconds
```

In this example, we first set the transfer mode to `binary` using the `binary` command, and then used the `put` command to upload the `image.jpg` file to the tftp server.

That's it! You now know how to use the tftp client to transfer files to and from a tftp server. In the next step, we'll review what we've learned in this lab.
