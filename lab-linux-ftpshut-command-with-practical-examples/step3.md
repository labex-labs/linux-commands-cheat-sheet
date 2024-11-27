# Scheduling Automatic FTP Server Shutdown

In this step, we will learn how to schedule an automatic shutdown of the FTP server using the `ftpshut` command.

First, let's check the current status of the FTP server:

```bash
sudo systemctl status vsftpd
```

Example output:

```
● vsftpd.service - vsftpd FTP server
     Loaded: loaded (/lib/systemd/system/vsftpd.service; enabled; vendor preset: enabled)
     Active: inactive (dead)
```

The output shows that the FTP server is currently inactive (dead), which means it is not running.

Now, let's schedule an automatic shutdown of the FTP server for a specific time in the future:

```bash
sudo ftpshut +1440 "Scheduled FTP server maintenance"
```

This command will schedule the FTP server to shut down in 1440 minutes (24 hours) from the current time, and display the message "Scheduled FTP server maintenance" to users trying to connect.

You can also schedule the shutdown for a specific date and time:

```bash
sudo ftpshut 2023-04-30 12:00 "Scheduled FTP server maintenance"
```

This command will schedule the FTP server to shut down on April 30, 2023, at 12:00 PM.

To verify that the automatic shutdown has been scheduled, you can check the status of the `ftpshut` command:

```bash
sudo ftpwho
```

Example output:

```
Shutdown time has been set to Fri Apr 28 12:34:56 2023.
No new connections will be allowed after that time.
```

This output shows the scheduled shutdown time for the FTP server.
