# Use ftpcount to Count FTP Sessions

In this step, we will use the `ftpcount` command to monitor and count the active FTP sessions on our system.

First, let's start an FTP server on our Docker container. We'll use the `vsftpd` (Very Secure FTP Daemon) package for this:

```bash
sudo apt-get install -y vsftpd
sudo systemctl start vsftpd
```

Now, let's use the `ftpcount` command to check the active FTP sessions:

```bash
ftpcount
```

Example output:

```
There are 0 FTP sessions active.
```

As you can see, the `ftpcount` command reports that there are currently 0 active FTP sessions on our system.

To simulate an active FTP session, let's connect to the FTP server using the `ftp` command:

```bash
ftp localhost
```

In the FTP prompt, enter the following commands:

```
user labex
[password]
ls
exit
```

Now, let's run `ftpcount` again to see the updated session count:

```bash
ftpcount
```

Example output:

```
There is 1 FTP session active.
```

The `ftpcount` command now shows that there is 1 active FTP session on our system.
