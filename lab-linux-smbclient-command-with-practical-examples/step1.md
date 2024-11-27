# Install smbclient on Ubuntu 22.04

In this step, we will install the smbclient package on the Ubuntu 22.04 Docker container. smbclient is a command-line tool used to access and interact with Windows file shares.

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

Next, install the smbclient package:

```bash
sudo apt-get install -y smbclient
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libsmbclient
Suggested packages:
  samba-common
The following NEW packages will be installed:
  libsmbclient smbclient
0 upgraded, 2 newly installed, 0 to remove and 0 not upgraded.
Need to get 479 kB of archives.
After this operation, 1,711 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://archive.ubuntu.com/ubuntu jammy/main amd64 libsmbclient amd64 2:4.15.5+dfsg-1ubuntu2 [222 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy/main amd64 smbclient amd64 2:4.15.5+dfsg-1ubuntu2 [257 kB]
Fetched 479 kB in 0s (1,030 kB/s)
Selecting previously unselected package libsmbclient.
(Reading database ... 26536 files and directories currently installed.)
Preparing to unpack .../libsmbclient_2%3a4.15.5+dfsg-1ubuntu2_amd64.deb ...
Unpacking libsmbclient (2:4.15.5+dfsg-1ubuntu2) ...
Selecting previously unselected package smbclient.
Preparing to unpack .../smbclient_2%3a4.15.5+dfsg-1ubuntu2_amd64.deb ...
Unpacking smbclient (2:4.15.5+dfsg-1ubuntu2) ...
Setting up libsmbclient (2:4.15.5+dfsg-1ubuntu2) ...
Setting up smbclient (2:4.15.5+dfsg-1ubuntu2) ...
Processing triggers for man-db (2.10.2-1) ...
Processing triggers for libc-bin (2.35-0ubuntu3) ...
```

The smbclient package is now installed on the Ubuntu 22.04 Docker container.
