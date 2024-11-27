# Introduction to rlogin Command

In this step, you will learn about the rlogin command, which is used to establish a remote login session to a different system over the network. The rlogin command allows you to execute commands and transfer files between the local and remote systems securely.

First, let's check the availability of the rlogin command on your system:

```bash
which rlogin
```

Example output:

```
/usr/bin/rlogin
```

The output shows that the rlogin command is installed and available in the `/usr/bin/` directory.

Next, let's try to establish a remote login session using the rlogin command. Assuming you have another system (or a Docker container) available, you can use the following command to connect to it:

```bash
rlogin remote_host
```

Replace `remote_host` with the hostname or IP address of the remote system you want to connect to.

Once you execute the command, you should be prompted to enter your username on the remote system. After providing the username, you will be logged in to the remote system, and you can start executing commands and transferring files between the local and remote systems.

To exit the remote login session, you can use the `exit` command.

```bash
exit
```

This will disconnect you from the remote system and return you to the local system's shell.
