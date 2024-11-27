# Start, Stop, and Restart the Apache HTTP Server

In this step, we will learn how to start, stop, and restart the Apache HTTP Server.

First, let's start the Apache HTTP Server:

```bash
sudo systemctl start apache2
```

Example output:

```

```

To verify the Apache HTTP Server is running, we can use the `systemctl status` command:

```bash
sudo systemctl status apache2
```

Example output:

```
● apache2.service - The Apache HTTP Server
     Loaded: loaded (/lib/systemd/system/apache2.service; enabled; vendor preset: enabled)
     Active: active (running) since Fri 2023-04-28 06:29:07 UTC; 10s ago
       Docs: https://httpd.apache.org/docs/2.4/
    Process: 1190 ExecStart=/usr/sbin/apachectl start (code=exited, status=0/SUCCESS)
   Main PID: 1196 (apache2)
      Tasks: 55 (limit: 4686)
     Memory: 7.1M
        CPU: 86ms
     CGroup: /system.slice/apache2.service
             ├─1196 /usr/sbin/apache2 -k start
             ├─1197 /usr/sbin/apache2 -k start
             └─1198 /usr/sbin/apache2 -k start
```

Next, let's stop the Apache HTTP Server:

```bash
sudo systemctl stop apache2
```

Example output:

```

```

To verify the Apache HTTP Server is stopped, we can use the `systemctl status` command again:

```bash
sudo systemctl status apache2
```

Example output:

```
● apache2.service - The Apache HTTP Server
     Loaded: loaded (/lib/systemd/system/apache2.service; enabled; vendor preset: enabled)
     Active: inactive (dead) since Fri 2023-04-28 06:29:17 UTC; 5s ago
       Docs: https://httpd.apache.org/docs/2.4/
    Process: 1190 ExecStart=/usr/sbin/apachectl start (code=exited, status=0/SUCCESS)
    Process: 1321 ExecStop=/usr/sbin/apachectl stop (code=exited, status=0/SUCCESS)
   Main PID: 1196 (code=exited, status=0/SUCCESS)
```

Finally, let's restart the Apache HTTP Server:

```bash
sudo systemctl restart apache2
```

Example output:

```

```

Verify the Apache HTTP Server is running again:

```bash
sudo systemctl status apache2
```

Example output:

```
● apache2.service - The Apache HTTP Server
     Loaded: loaded (/lib/systemd/system/apache2.service; enabled; vendor preset: enabled)
     Active: active (running) since Fri 2023-04-28 06:29:22 UTC; 5s ago
       Docs: https://httpd.apache.org/docs/2.4/
    Process: 1190 ExecStart=/usr/sbin/apachectl start (code=exited, status=0/SUCCESS)
    Process: 1321 ExecStop=/usr/sbin/apachectl stop (code=exited, status=0/SUCCESS)
    Process: 1358 ExecStart=/usr/sbin/apachectl start (code=exited, status=0/SUCCESS)
   Main PID: 1364 (apache2)
      Tasks: 55 (limit: 4686)
     Memory: 7.1M
        CPU: 86ms
     CGroup: /system.slice/apache2.service
             ├─1364 /usr/sbin/apache2 -k start
             ├─1365 /usr/sbin/apache2 -k start
             └─1366 /usr/sbin/apache2 -k start
```

The output shows that the Apache HTTP Server is running again after the restart.
