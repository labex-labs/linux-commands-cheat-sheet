# Establishing Remote Login Session

In this step, you will learn how to establish a remote login session using the rlogin command.

First, let's ensure that you have a remote system or Docker container available to connect to. For this example, let's assume the remote host has an IP address of `192.168.1.100`.

To establish the remote login session, use the following command:

```bash
rlogin 192.168.1.100
```

You will be prompted to enter your username on the remote system. Provide the username and press Enter.

Once you're logged in, you should see the remote system's shell prompt. Now, you can start executing commands and transferring files between the local and remote systems.

For example, you can run the `ls` command on the remote system to list the contents of the current directory:

```bash
ls
```

Example output:

```
Documents  Downloads  Music  Pictures  Public  Templates  Videos
```

To exit the remote login session, use the `exit` command:

```bash
exit
```

This will disconnect you from the remote system and return you to the local system's shell.
