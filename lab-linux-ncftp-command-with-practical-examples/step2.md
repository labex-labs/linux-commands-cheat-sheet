# Connect to an FTP Server Using ncftp

In this step, we will learn how to connect to an FTP server using the ncftp command-line client.

First, let's create a directory to store our FTP connection details:

```bash
mkdir ~/project/ftp_config
```

Next, we'll create a configuration file to store the FTP server connection details:

```bash
nano ~/project/ftp_config/ftp.cfg
```

Add the following content to the file, replacing the placeholders with your actual FTP server details:

```
host=ftp.example.com
user=myusername
pass=mypassword
```

Save and close the file.

Now, let's connect to the FTP server using the ncftp command:

```bash
ncftp -u myusername -p mypassword ftp.example.com
```

Example output:

```
ncftp>
```

You should now be connected to the FTP server. You can use the following commands to navigate and manage files on the server:

- `ls` - List files and directories on the FTP server
- `cd <directory>` - Change the current directory on the FTP server
- `get <file>` - Download a file from the FTP server
- `put <file>` - Upload a file to the FTP server
- `quit` - Disconnect from the FTP server

To exit the ncftp client, type `quit` and press Enter.
