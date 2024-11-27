# Transferring Files with the cu Command

In this step, we will learn how to transfer files using the `cu` command. The `cu` command can be used to send and receive files between the local and remote systems.

To transfer a file from the local system to the remote system, follow these steps:

1. Establish a connection to the remote system using the `cu` command:

```bash
sudo cu -l /dev/ttyUSB0 -s 9600
```

2. Once the connection is established, type `~>` followed by the filename to send the file:

```
~>example.txt
```

This will initiate the file transfer process. The remote system will prompt you to start the file transfer.

3. To transfer the file, simply press Enter on the local system. The file will be transferred to the remote system.

Example output:

```
Connected.
~>example.txt
[remote system prompts]
[file transfer starts]
```

To receive a file from the remote system, follow these steps:

1. Establish a connection to the remote system using the `cu` command.
2. On the remote system, type `~<` followed by the filename to initiate the file transfer.
3. On the local system, the file transfer will start automatically. The file will be saved in the current directory.

Example output:

```
Connected.
~<example.txt
[file transfer starts]
[file saved on local system]
```

Now, let's try to transfer a file using the `cu` command.
