# Install ncftp on Ubuntu 22.04

In this step, we will install the ncftp command-line FTP client on the Ubuntu 22.04 environment.

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

Next, install the ncftp package using the following command:

```bash
sudo apt-get install -y ncftp
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libevent-2.1-7 libncurses6 libreadline8 libssl3
Suggested packages:
  ncftp-doc
The following NEW packages will be installed:
  libevent-2.1-7 libncurses6 libreadline8 libssl3 ncftp
0 upgraded, 5 newly installed, 0 to remove and 0 not upgraded.
Need to get 1,021 kB of archives.
After this operation, 3,415 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://archive.ubuntu.com/ubuntu jammy/main amd64 libncurses6 amd64 6.3-2 [84.0 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy/main amd64 libreadline8 amd64 8.1-1 [159 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy/main amd64 libevent-2.1-7 amd64 2.1.12-stable-1 [216 kB]
Get:4 http://archive.ubuntu.com/ubuntu jammy/main amd64 libssl3 amd64 3.0.2-0ubuntu1.6 [443 kB]
Get:5 http://archive.ubuntu.com/ubuntu jammy/universe amd64 ncftp amd64 3.2.6-1 [119 kB]
Fetched 1,021 kB in 1s (1,021 kB/s)
Selecting previously unselected package libncurses6:amd64.
(Reading database ... 14362 files and directories currently installed.)
Preparing to unpack .../libncurses6_6.3-2_amd64.deb ...
Unpacking libncurses6:amd64 (6.3-2) ...
Selecting previously unselected package libreadline8:amd64.
Preparing to unpack .../libreadline8_8.1-1_amd64.deb ...
Unpacking libreadline8:amd64 (8.1-1) ...
Selecting previously unselected package libevent-2.1-7:amd64.
Preparing to unpack .../libevent-2.1-7_2.1.12-stable-1_amd64.deb ...
Unpacking libevent-2.1-7:amd64 (2.1.12-stable-1) ...
Selecting previously unselected package libssl3:amd64.
Preparing to unpack .../libssl3_3.0.2-0ubuntu1.6_amd64.deb ...
Unpacking libssl3:amd64 (3.0.2-0ubuntu1.6) ...
Selecting previously unselected package ncftp.
Preparing to unpack .../ncftp_3.2.6-1_amd64.deb ...
Unpacking ncftp (3.2.6-1) ...
Setting up libncurses6:amd64 (6.3-2) ...
Setting up libreadline8:amd64 (8.1-1) ...
Setting up libevent-2.1-7:amd64 (2.1.12-stable-1) ...
Setting up libssl3:amd64 (3.0.2-0ubuntu1.6) ...
Setting up ncftp (3.2.6-1) ...
Processing triggers for man-db (2.10.2-1) ...
Processing triggers for libc-bin (2.35-0ubuntu3.1) ...
```

The ncftp package is now installed on your Ubuntu 22.04 environment.
