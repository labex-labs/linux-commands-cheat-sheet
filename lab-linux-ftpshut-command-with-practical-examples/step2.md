# Shutting Down the FTP Server

In this step, we will learn how to shut down the FTP server using the `ftpshut` command.

First, let's check the status of the FTP server:

```bash
sudo systemctl status vsftpd
```

Example output:

```
● vsftpd.service - vsftpd FTP server
     Loaded: loaded (/lib/systemd/system/vsftpd.service; enabled; vendor preset: enabled)
     Active: active (running) since Mon 2023-04-24 12:34:56 UTC; 1 day 2h ago
   Main PID: 1234 (vsftpd)
     Tasks: 1 (limit: 4915)
    Memory: 1.1M
    CGroup: /system.slice/vsftpd.service
            └─1234 /usr/sbin/vsftpd /etc/vsftpd.conf
```

The output shows that the FTP server is currently running.

Now, let's use the `ftpshut` command to shut down the FTP server:

```bash
sudo ftpshut now "Scheduled FTP server maintenance"
```

Example output:

```
Shutdown time has been set to Fri Apr 28 12:34:56 2023.
No new connections will be allowed after that time.
```

In this example, the FTP server will be shut down immediately, and the shutdown message "Scheduled FTP server maintenance" will be displayed to users trying to connect.

Let's verify that the FTP server has been shut down:

```bash
sudo systemctl status vsftpd
```

Example output:

```
● vsftpd.service - vsftpd FTP server
     Loaded: loaded (/lib/systemd/system/vsftpd.service; enabled; vendor preset: enabled)
     Active: inactive (dead) since Fri 2023-04-28 12:34:56 UTC; 1s ago
   Main PID: 1234 (code=exited, status=0/SUCCESS)
     Tasks: 0 (limit: 4915)
    Memory: 0B
    CGroup: /system.slice/vsftpd.service
```

The output shows that the FTP server is now inactive (dead), indicating that it has been successfully shut down.
