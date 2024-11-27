# Manage Files and Directories on the FTP Server

In this step, we will learn how to manage files and directories on the FTP server using the ncftp command-line client.

First, let's connect to the FTP server using the ncftp command:

```bash
ncftp -u myusername -p mypassword ftp.example.com
```

Example output:

```
ncftp>
```

Now, let's explore the available commands to manage files and directories:

1. List files and directories on the FTP server:

```
ncftp> ls
```

Example output:

```
drwxr-xr-x   2 user     group         4096 Apr 12 12:34 documents
-rw-r--r--   1 user     group           24 Apr 12 12:34 example.txt
```

2. Change the current directory on the FTP server:

```
ncftp> cd documents
```

3. Upload a file to the FTP server:

```
ncftp> put ~/project/local_file.txt
```

4. Download a file from the FTP server:

```
ncftp> get remote_file.txt
```

5. Create a new directory on the FTP server:

```
ncftp> mkdir new_directory
```

6. Delete a file on the FTP server:

```
ncftp> rm example.txt
```

7. To exit the ncftp client, type `quit` and press Enter.

```
ncftp> quit
```

Remember to replace the file and directory names with your actual FTP server details.
