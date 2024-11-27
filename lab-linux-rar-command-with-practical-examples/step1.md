# Install rar Package on Ubuntu 22.04

In this step, we will install the rar package on the Ubuntu 22.04 Docker container. The rar package provides the `rar` command, which is a powerful tool for creating and managing RAR archives.

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

Next, install the rar package using the following command:

```bash
sudo apt-get install -y rar
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  librar5
Suggested packages:
  unrar
The following NEW packages will be installed:
  librar5 rar
0 upgraded, 2 newly installed, 0 to remove and 0 not upgraded.
Need to get 725 kB of archives.
After this operation, 2,269 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://archive.ubuntu.com/ubuntu jammy/universe amd64 librar5 amd64 5.9.0-1 [407 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy/universe amd64 rar amd64 1:6.1.0-1 [318 kB]
Fetched 725 kB in 1s (725 kB/s)
Selecting previously unselected package librar5.
(Reading database ... 28133 files and directories currently installed.)
Preparing to unpack .../librar5_5.9.0-1_amd64.deb ...
Unpacking librar5 (5.9.0-1) ...
Selecting previously unselected package rar.
Preparing to unpack .../rar_1%3a6.1.0-1_amd64.deb ...
Unpacking rar (1:6.1.0-1) ...
Setting up librar5 (5.9.0-1) ...
Setting up rar (1:6.1.0-1) ...
Processing triggers for man-db (2.10.2-1) ...
```

The rar package is now installed on your Ubuntu 22.04 Docker container.
