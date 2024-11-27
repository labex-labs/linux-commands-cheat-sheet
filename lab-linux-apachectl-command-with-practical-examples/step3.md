# Check the Apache Web Server Status

In this step, we will learn how to check the status of the Apache web server using the `apachectl` command.

First, let's check the basic status of the Apache web server:

```bash
sudo apachectl status
```

Example output:

```
Apache Server Status for localhost (via 127.0.0.1)

Server Version: Apache/2.4.52 (Ubuntu)
Server Built:   2022-06-08T12:06:22

Current Time: Wednesday, 26-Apr-2023 19:14:22 UTC
Server uptime:   0 minutes 12 seconds
Total accesses: 0 - Total Traffic: 0 bytes
CPU Usage: u0.000 s0.000 cu0.000 cs0.000 - 0.00% CPU load
1 requests/second - 0 B/second - 0 B/request
0 requests currently being processed, 2 idle workers

Scoreboard: _________________________________________________________________
```

The `apachectl status` command displays the basic status of the Apache web server, including the server version, uptime, and current activity.

To get more detailed status information, we can use the `apachectl fullstatus` command:

```bash
sudo apachectl fullstatus
```

Example output:

```
Apache Server Status for localhost (via 127.0.0.1)

Server Version: Apache/2.4.52 (Ubuntu)
Server Built:   2022-06-08T12:06:22

Current Time: Wednesday, 26-Apr-2023 19:15:01 UTC
Restart Time: Wednesday, 26-Apr-2023 19:14:10 UTC
Parent Server Generation: 0
Server uptime:   0 minutes 51 seconds
Total accesses: 0 - Total Traffic: 0 bytes
CPU Usage: u0.000 s0.000 cu0.000 cs0.000 - 0.00% CPU load
1 requests/second - 0 B/second - 0 B/request
0 requests currently being processed, 2 idle workers

Scoreboard: _________________________________________________________________

Srv PID Acc M CPU SS Req Conn Child Slot
--- --- --- - --- -- --- ---- ----- -----
0-0 - 0 _ 0.00 0 0 0 0 _
0-1 - 0 _ 0.00 0 0 0 0 _
```

The `apachectl fullstatus` command provides more detailed information about the Apache web server, including the number of requests, CPU usage, and worker status.
