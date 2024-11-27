# Synchronize System Time with Remote NTP Server

In this step, you will learn how to synchronize your system's time with a remote NTP server using the `rdate` command.

First, let's check the current system time:

```
date
```

Example output:

```
Thu Jan  1 00:00:00 UTC 2023
```

Now, let's synchronize the system time with the `time.nist.gov` NTP server:

```
sudo rdate -s time.nist.gov
```

Example output:

```
Thu Jan  1 00:00:00 UTC 2023
```

To verify that the system time has been updated, run the `date` command again:

```
date
```

Example output:

```
Thu Jan  1 00:00:00 UTC 2023
```

As you can see, the system time has been synchronized with the remote NTP server.

You can also use the `ntpdate` command to synchronize the system time with an NTP server. The `ntpdate` command is similar to `rdate`, but it provides more advanced options for time synchronization. Here's an example:

```
sudo ntpdate time.nist.gov
```

Example output:

```
1 Jan 00:00:00 ntpdate[12345]: adjust time server 192.168.1.100 offset 0.123456 sec
```

The `ntpdate` command adjusts the system time based on the offset from the remote NTP server, providing a more accurate time synchronization.
