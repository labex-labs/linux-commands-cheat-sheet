# Executing Remote Commands and Transferring Files

In this step, you will learn how to execute commands on the remote system and transfer files between the local and remote systems using the rlogin command.

First, let's establish a remote login session to the remote system:

```bash
rlogin 192.168.1.100
```

Enter your username when prompted.

Now, you can execute commands on the remote system directly from your local system. For example, let's run the `uname -a` command to get information about the remote system's operating system:

```bash
uname -a
```

Example output:

```
Linux remote_host 5.15.0-58-generic #64~20.04.1-Ubuntu SMP Fri Jan 6 16:49:16 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux
```

To transfer a file from the local system to the remote system, you can use the `rcp` (remote copy) command. Let's create a file on the local system and then copy it to the remote system:

```bash
echo "This is a test file." > test_file.txt
rcp test_file.txt 192.168.1.100:/home/labex/
```

This will copy the `test_file.txt` from the local system to the `/home/labex/` directory on the remote system.

To transfer a file from the remote system to the local system, you can use the same `rcp` command but reverse the source and destination:

```bash
rcp 192.168.1.100:/home/labex/test_file.txt ./
```

This will copy the `test_file.txt` from the remote system to the current directory on the local system.

When you're done, exit the remote login session using the `exit` command:

```bash
exit
```
