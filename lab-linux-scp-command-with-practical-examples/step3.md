# Recursive Copying of Directories with scp

In this step, you will learn how to use the scp command to recursively copy directories between the local and remote hosts.

To copy a directory recursively, you need to use the `-r` (recursive) option with the scp command. Let's start by creating a directory on the local host and adding some files to it:

```
mkdir ~/project/directory1
touch ~/project/directory1/file1.txt
touch ~/project/directory1/file2.txt
```

Now, let's copy the entire `directory1` directory from the local host to the remote host:

```
scp -r ~/project/directory1 labex@remote_host:/home/labex/project/
```

This command will securely copy the `directory1` directory, including all its contents, from the local `~/project` directory to the `/home/labex/project/` directory on the remote host.

Example output:

```
directory1/                                 100%    0     0.0KB/s   00:00
directory1/file1.txt                         100%  123     0.1KB/s   00:00
directory1/file2.txt                         100%  123     0.1KB/s   00:00
```

Now, let's copy the `directory1` directory from the remote host to the local host:

```
scp -r labex@remote_host:/home/labex/project/directory1 ~/project/
```

This command will securely copy the `directory1` directory, including all its contents, from the `/home/labex/project/` directory on the remote host to the local `~/project/` directory.

Example output:

```
directory1/                                 100%    0     0.0KB/s   00:00
directory1/file1.txt                         100%  123     0.1KB/s   00:00
directory1/file2.txt                         100%  123     0.1KB/s   00:00
```

You have now learned how to use the scp command to recursively copy directories between the local and remote hosts.
