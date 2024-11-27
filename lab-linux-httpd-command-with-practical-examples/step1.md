# Install Apache HTTP Server on Ubuntu 22.04

In this step, we will install the Apache HTTP Server on the Ubuntu 22.04 Docker container.

First, let's update the package index:

```bash
sudo apt-get update
```

Example output:

```
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Get:2 http://security.ubuntu.com/ubuntu jammy-security InRelease [110 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [114 kB]
Get:4 http://archive.ubuntu.com/ubuntu jammy-backports InRelease [99.8 kB]
Fetched 324 kB in 1s (324 kB/s)
Reading package lists... Done
```

Next, install the Apache HTTP Server package:

```bash
sudo apt-get install -y apache2
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  apache2-bin apache2-data apache2-utils libapr1 libaprutil1 libaprutil1-dbd-sqlite3 libaprutil1-ldap libexpat1 libxml2 procps
Suggested packages:
  www-browser
The following NEW packages will be installed:
  apache2 apache2-bin apache2-data apache2-utils libapr1 libaprutil1 libaprutil1-dbd-sqlite3 libaprutil1-ldap libexpat1 libxml2 procps
0 upgraded, 11 newly installed, 0 to remove and 0 not upgraded.
Need to get 1,679 kB of archives.
After this operation, 7,542 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://archive.ubuntu.com/ubuntu jammy/main amd64 libapr1 amd64 1.7.0-6ubuntu0.22.04.1 [94.8 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy/main amd64 libaprutil1 amd64 1.6.1-4ubuntu2 [87.1 kB]
...
Selecting previously unselected package apache2.
(Reading database ... 14342 files and directories currently installed.)
Preparing to unpack .../apache2_2.4.52-1ubuntu4.1_amd64.deb ...
Unpacking apache2 (2.4.52-1ubuntu4.1) ...
Selecting previously unselected package apache2-bin.
Preparing to unpack .../apache2-bin_2.4.52-1ubuntu4.1_amd64.deb ...
Unpacking apache2-bin (2.4.52-1ubuntu4.1) ...
...
Setting up apache2 (2.4.52-1ubuntu4.1) ...
Creating config file /etc/apache2/apache2.conf with new version
Creating config file /etc/apache2/ports.conf with new version
...
Processing triggers for systemd (249.11-0ubuntu3.6) ...
Processing triggers for man-db (2.10.2-1) ...
Processing triggers for ufw (0.36.1-2ubuntu1) ...
```

After the installation is complete, we can verify the Apache HTTP Server is running:

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

The output shows that the Apache HTTP Server is running and active.
