# Sending Files Using the uuto Command

In this step, we will learn how to use the `uuto` command to securely send files to a remote system.

First, let's create a sample file to transfer:

```
echo "This is a test file." > example.txt
```

Now, let's send the `example.txt` file to a remote user named `remote_user` on a system with the hostname `remote_host`:

```
uuto example.txt remote_user@remote_host
```

Example output:

```
sending file example.txt to remote_user@remote_host ...
```

The `uuto` command will initiate the file transfer to the remote system. The actual transfer process may take some time, depending on the file size and network conditions.

You can also use additional options with the `uuto` command, such as:

- `-m`: Send a notification email to the sender when the file transfer is complete.
- `-n`: Do not send a notification email.
- `-r`: Remove the source file after a successful transfer.

For example, to send the file and remove the source file after a successful transfer, you can use:

```
uuto -r example.txt remote_user@remote_host
```

This will send the `example.txt` file to the remote system and delete the local copy of the file.
