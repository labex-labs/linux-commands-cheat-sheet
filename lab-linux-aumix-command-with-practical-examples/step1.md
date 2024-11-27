# Install aumix Package on Ubuntu 22.04

In this step, we will install the `aumix` package on our Ubuntu 22.04 system. The `aumix` command-line tool allows us to adjust various audio settings, such as volume levels and muting channels.

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

Next, install the `aumix` package:

```bash
sudo apt-get install -y aumix
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libgtk2.0-0 libgtk2.0-common
Suggested packages:
  aumix-gtk
The following NEW packages will be installed:
  aumix libgtk2.0-0 libgtk2.0-common
0 upgraded, 3 newly installed, 0 to remove and 0 not upgraded.
Need to get 1,112 kB of archives.
After this operation, 3,394 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://archive.ubuntu.com/ubuntu jammy/main amd64 libgtk2.0-common all 2.24.33-1ubuntu1 [156 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy/main amd64 libgtk2.0-0 amd64 2.24.33-1ubuntu1 [519 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy/main amd64 aumix amd64 2.9.1-6 [437 kB]
Fetched 1,112 kB in 1s (1,112 kB/s)
Selecting previously unselected package libgtk2.0-common.
(Reading database ... 14550 files and directories currently installed.)
Preparing to unpack .../libgtk2.0-common_2.24.33-1ubuntu1_all.deb ...
Unpacking libgtk2.0-common (2.24.33-1ubuntu1) ...
Selecting previously unselected package libgtk2.0-0:amd64.
Preparing to unpack .../libgtk2.0-0_2.24.33-1ubuntu1_amd64.deb ...
Unpacking libgtk2.0-0:amd64 (2.24.33-1ubuntu1) ...
Selecting previously unselected package aumix.
Preparing to unpack .../aumix_2.9.1-6_amd64.deb ...
Unpacking aumix (2.9.1-6) ...
Setting up libgtk2.0-common (2.24.33-1ubuntu1) ...
Setting up libgtk2.0-0:amd64 (2.24.33-1ubuntu1) ...
Setting up aumix (2.9.1-6) ...
Processing triggers for man-db (2.10.2-1) ...
Processing triggers for libc-bin (2.35-0ubuntu3) ...
```

The `aumix` package is now installed on our Ubuntu 22.04 system.
