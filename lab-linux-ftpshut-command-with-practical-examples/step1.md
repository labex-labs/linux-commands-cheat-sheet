# Introduction to the ftpshut Command

In this step, we will explore the `ftpshut` command in Linux, which is used to shut down the FTP server. The `ftpshut` command allows you to gracefully shut down the FTP server, preventing any new connections and allowing existing connections to complete before the server is shut down.

First, let's check if the FTP server is running on our system:

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

In this example, the FTP server (vsftpd) is running on the system.

Now, let's use the `ftpshut` command to shut down the FTP server:

```bash
sudo ftpshut
```

Example output:

```
Shutdown time has been set to Fri Apr 28 12:34:56 2023.
No new connections will be allowed after that time.
```

The `ftpshut` command sets the shutdown time for the FTP server, which in this case is set to 4 days from now. After this time, no new connections will be allowed to the FTP server.

You can also specify a custom shutdown time using the `ftpshut` command:

```bash
sudo ftpshut now "Scheduled FTP server maintenance"
```

Example output:

```
Shutdown time has been set to Fri Apr 28 12:34:56 2023.
No new connections will be allowed after that time.
```

In this example, the FTP server will be shut down immediately, and the shutdown message "Scheduled FTP server maintenance" will be displayed to users trying to connect.
