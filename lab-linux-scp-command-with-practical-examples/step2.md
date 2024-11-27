# Copying Files Between Local and Remote Hosts

In this step, you will learn how to use the scp command to copy files between the local and remote hosts.

Let's start by copying a file from the local host to the remote host. Ensure that you are in the `~/project` directory on the local host:

```
scp file.txt labex@remote_host:/home/labex/project/
```

This command will securely copy the `file.txt` file from the local `~/project` directory to the `/home/labex/project/` directory on the remote host.

Example output:

```
file.txt                                    100%  123     0.1KB/s   00:00
```

Now, let's copy a file from the remote host to the local host:

```
scp labex@remote_host:/home/labex/project/file.txt ~/project/
```

This command will securely copy the `file.txt` file from the `/home/labex/project/` directory on the remote host to the local `~/project/` directory.

Example output:

```
file.txt                                    100%  123     0.1KB/s   00:00
```

You can also copy multiple files at once using the scp command. For example, to copy two files from the local host to the remote host:

```
scp file1.txt file2.txt labex@remote_host:/home/labex/project/
```

This command will securely copy both `file1.txt` and `file2.txt` from the local `~/project` directory to the `/home/labex/project/` directory on the remote host.

Example output:

```
file1.txt                                   100%  123     0.1KB/s   00:00
file2.txt                                   100%  456     0.4KB/s   00:00
```

In the next step, you will learn how to use the scp command to recursively copy directories between the local and remote hosts.
