# Understand the rdate Command

In this step, you will learn about the `rdate` command, which is used to synchronize the system time with a remote Network Time Protocol (NTP) server.

The `rdate` command is a tool that allows you to set the system clock on a Linux or Unix-like operating system by retrieving the current time from a remote server. This is useful when your system's clock is not accurate or needs to be synchronized with a reference time source.

To use the `rdate` command, simply run the following command in your terminal:

```
sudo rdate -s time.nist.gov
```

This will set the system clock to the current time provided by the `time.nist.gov` NTP server.

Example output:

```
Thu Jan  1 00:00:00 UTC 2023
```

The `-s` option tells `rdate` to set the system clock to the time received from the remote server. You can use any NTP server that is accessible to your system, such as `pool.ntp.org` or a server provided by your organization.

To verify the current system time, you can use the `date` command:

```
date
```

Example output:

```
Thu Jan  1 00:00:00 UTC 2023
```

As you can see, the system time has been updated to match the time provided by the remote NTP server.
