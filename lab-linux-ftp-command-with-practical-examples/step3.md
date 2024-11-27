# Transferring Files and Directories with FTP

In this step, we will learn how to transfer files and directories between the local machine and the remote FTP server.

First, let's connect to the FTP server:

```
ftp ftp.example.com
```

Once connected, you can use the following FTP commands to manage files and directories:

- `ls` or `dir`: List the contents of the current directory on the remote server.
- `cd directory`: Change the current directory on the remote server.
- `pwd`: Print the current working directory on the remote server.
- `get filename`: Download a file from the remote server to the local machine.
- `put filename`: Upload a file from the local machine to the remote server.
- `mget filename1 filename2 ...`: Download multiple files from the remote server.
- `mput filename1 filename2 ...`: Upload multiple files to the remote server.
- `mkdir directory`: Create a new directory on the remote server.
- `rmdir directory`: Remove a directory on the remote server.
- `delete filename`: Delete a file on the remote server.
- `quit` or `bye`: Disconnect from the FTP server.

Example: Uploading a file to the remote server

```
ftp ftp.example.com
cd /path/to/remote/directory
put local_file.txt
```

Example output:

```
ftp> put local_file.txt
local: local_file.txt remote: local_file.txt
200 PORT command successful. Consider using PASV.
150 Opening BINARY mode data connection for local_file.txt.
226 Transfer complete.
5120 bytes sent in 0.00 secs (5120000.00 Kbytes/sec)
ftp>
```

In the example above, we connected to the FTP server, changed the current directory on the remote server, and then used the `put` command to upload the `local_file.txt` file.

Try practicing file and directory management operations using the FTP commands demonstrated above.
