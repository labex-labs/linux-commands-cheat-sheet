# View System Log Entries Using the uulog Command

In this step, you will learn how to use the `uulog` command to view system log entries.

First, let's take a look at the default system log file, `/var/log/syslog`:

```
$ sudo uulog /var/log/syslog
```

This will display the contents of the `/var/log/syslog` file. You can see various log entries related to system events, such as startup, service status, and error messages.

To view the last 10 log entries:

```
$ sudo uulog -n 10
```

This will display the most recent 10 log entries.

You can also view log entries from a specific date and time:

```
$ sudo uulog -t "2023-04-01 12:00:00"
```

This will display log entries from the specified date and time.

To view log entries with a specific priority level, such as errors:

```
$ sudo uulog -p err
```

This will display all log entries with the "error" priority level.

Example output:

```
Apr 01 12:34:56 myhost kernel: [UFW BLOCK] IN=eth0 OUT= MAC=00:11:22:33:44:55:66:77:88:99:aa:bb:cc:dd SRC=192.168.1.100 DST=192.168.1.101 LEN=60 TOS=0x00 PREC=0x00 TTL=64 ID=1122 PROTO=TCP SPT=12345 DPT=80 WINDOW=1024 RES=0x00 SYN URGP=0
Apr 01 12:35:01 myhost CRON[12345]: (root) CMD (command to be executed)
Apr 01 12:35:10 myhost sshd[12346]: Failed password for invalid user example from 192.168.1.100 port 12345 ssh2
```

Remember, the `uulog` command provides a convenient way to access and filter system log entries, which can be helpful for troubleshooting and monitoring your system.
