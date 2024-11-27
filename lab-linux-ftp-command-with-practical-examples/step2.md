# Connecting to an FTP Server Using the ftp Command

In this step, we will learn how to connect to an FTP server using the `ftp` command in the Linux terminal.

First, let's try connecting to an anonymous FTP server. We will use the `ftp` command followed by the server's IP address or hostname:

```
ftp ftp.example.com
```

Example output:

```
Connected to ftp.example.com.
220 (vsFTPd 3.0.3)
Name (ftp.example.com:labex): anonymous
331 Please specify the password.
Password:
230 Login successful.
Remote system type is UNIX.
Using binary mode to transfer files.
ftp>
```

In the example above, we connected to the FTP server `ftp.example.com` using the `ftp` command. The server prompted us to enter a username, which we provided as "anonymous". We then entered a password, which is typically left blank for anonymous FTP access.

Once connected, you will see the `ftp>` prompt, where you can enter FTP commands to interact with the remote server.

Next, let's try connecting to an FTP server with authenticated access:

```
ftp ftp.example.com
```

Example output:

```
Connected to ftp.example.com.
220 (vsFTPd 3.0.3)
Name (ftp.example.com:labex): myusername
331 Please specify the password.
Password:
230 Login successful.
Remote system type is UNIX.
Using binary mode to transfer files.
ftp>
```

In this case, we need to provide a valid username and password to authenticate and connect to the FTP server.

Once connected, you can use various FTP commands to navigate the remote file system, upload, download, and manage files. We will explore these commands in the next step.
