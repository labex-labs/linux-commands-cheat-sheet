# Understanding the tftp Command

In this step, we will explore the tftp (Trivial File Transfer Protocol) command in Linux. The tftp command is a simple file transfer protocol that allows you to transfer files between a client and a server over a network.

First, let's check the version of the tftp command installed on your system:

```
$ tftp --version
tftp-hpa version 5.2
```

The tftp command has several options and commands that you can use to interact with a tftp server. Let's explore some of the most common ones:

```
$ tftp
tftp> ?
Commands:
 connect     connect to remote tftp
 mode        set transfer mode
 put         send file
 get         receive file
 quit        exit tftp
 verbose     toggle verbose mode
 trace       toggle packet tracing
 status      show current status
 binary      set mode to octet
 ascii       set mode to netascii
 rexmt       set per-packet retransmission timeout
 timeout     set total retransmission timeout
 ? or help   print help information
```

As you can see, the tftp command supports various commands such as `connect`, `put`, `get`, `quit`, and more. Let's try a simple file transfer using the `get` command:

```
tftp> connect 192.168.1.100
tftp> get example.txt
Received 123 bytes in 0.0 seconds
```

In the example above, we first connected to a tftp server at the IP address `192.168.1.100`, and then used the `get` command to download the `example.txt` file from the server.

You can also use the `put` command to upload a file to the tftp server:

```
tftp> put myfile.txt
Sent 456 bytes in 0.0 seconds
```

The tftp command is a simple and lightweight file transfer protocol, but it lacks some of the advanced features of other file transfer protocols like FTP or SFTP. In the next step, we'll learn how to configure a tftp server and use it to transfer files.
