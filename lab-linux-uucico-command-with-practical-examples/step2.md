# Configuring uucico for File Transfer

In this step, we will configure the `uucico` command to enable file transfer between systems using the UUCP protocol.

First, we need to create a configuration file for `uucico`. By default, the configuration file is located at `/etc/uucp/sys`. Let's create the file and open it in the nano editor:

```bash
sudo nano /etc/uucp/sys
```

In the configuration file, we need to add the following information:

1. The name of the remote system we want to connect to, e.g., `remote_system`.
2. The phone number or address of the remote system.
3. The login credentials for the remote system.
4. The directory on the remote system where files will be transferred.

Here's an example configuration:

```
# Remote system name
system remote_system
# Phone number or address of the remote system
phone 192.168.1.100
# Login credentials for the remote system
login uucp
password secret
# Directory on the remote system for file transfer
remote-path /home/remote_user/uucp
```

Save the configuration file and exit the nano editor.

Now, let's test the `uucico` command to ensure the configuration is correct:

```bash
sudo uucico -r1 -ssystem
```

This command will initiate a connection to the remote system and perform a file transfer. If the connection is successful, you should see output similar to the following:

```
Connecting to remote_system (192.168.1.100) ...
Logging in as uucp ...
Connected.
Transferring files ...
Disconnecting.
```

If the connection fails, check the configuration file for any errors and try again.
