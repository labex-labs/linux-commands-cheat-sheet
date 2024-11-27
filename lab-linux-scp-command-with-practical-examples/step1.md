# Introduction to scp Command

In this step, you will learn about the scp (secure copy) command, which is used to securely copy files and directories between local and remote hosts in a Linux environment.

The scp command is a part of the SSH (Secure Shell) suite of tools and provides a secure way to transfer data over a network. It uses the SSH protocol to encrypt the data during the transfer, ensuring the confidentiality and integrity of the transferred files.

To begin, let's explore the basic syntax of the scp command:

```
scp [options] source_file_or_directory destination_file_or_directory
```

Here, the `source_file_or_directory` can be a local file or directory, or a remote file or directory specified in the format `user@host:path`. The `destination_file_or_directory` can also be a local or remote location.

For example, to copy a file from the local host to a remote host, you can use the following command:

```
scp ~/project/file.txt labex@remote_host:/home/labex/project/
```

This command will securely copy the `file.txt` file from the local `~/project` directory to the `/home/labex/project/` directory on the remote host.

Example output:

```
file.txt                                    100%  123     0.1KB/s   00:00
```

The output shows that the file was successfully copied to the remote host.

Similarly, to copy a file from a remote host to the local host, you can use the following command:

```
scp labex@remote_host:/home/labex/project/file.txt ~/project/
```

This command will securely copy the `file.txt` file from the `/home/labex/project/` directory on the remote host to the local `~/project/` directory.

Example output:

```
file.txt                                    100%  123     0.1KB/s   00:00
```

In the next step, you will learn how to use the scp command to copy files and directories between local and remote hosts with more advanced options.
