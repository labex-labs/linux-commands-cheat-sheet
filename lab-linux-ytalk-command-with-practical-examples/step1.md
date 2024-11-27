# Install the ytalk Package on Ubuntu 22.04

In this step, we will install the `ytalk` package on the Ubuntu 22.04 Docker container. `ytalk` is a command-line tool that allows users to communicate with each other in real-time.

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

Next, install the `ytalk` package:

```bash
sudo apt-get install -y ytalk
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libncurses6 libreadline8
Suggested packages:
  ytalk-doc
The following NEW packages will be installed:
  libncurses6 libreadline8 ytalk
0 upgraded, 3 newly installed, 0 to remove and 0 not upgraded.
Need to get 237 kB of archives.
After this operation, 1,001 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://archive.ubuntu.com/ubuntu jammy/main amd64 libncurses6 amd64 6.3-2 [84.4 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy/main amd64 libreadline8 amd64 8.1.2-1 [114 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy/main amd64 ytalk amd64 3.3.0-1 [38.6 kB]
Fetched 237 kB in 0s (1,542 kB/s)
Selecting previously unselected package libncurses6:amd64.
(Reading database ... 14851 files and directories currently installed.)
Preparing to unpack .../libncurses6_6.3-2_amd64.deb ...
Unpacking libncurses6:amd64 (6.3-2) ...
Selecting previously unselected package libreadline8:amd64.
Preparing to unpack .../libreadline8_8.1.2-1_amd64.deb ...
Unpacking libreadline8:amd64 (8.1.2-1) ...
Selecting previously unselected package ytalk.
Preparing to unpack .../ytalk_3.3.0-1_amd64.deb ...
Unpacking ytalk (3.3.0-1) ...
Setting up libncurses6:amd64 (6.3-2) ...
Setting up libreadline8:amd64 (8.1.2-1) ...
Setting up ytalk (3.3.0-1) ...
Processing triggers for man-db (2.10.2-1) ...
Processing triggers for libc-bin (2.35-0ubuntu3) ...
```

The `ytalk` package is now installed on the Ubuntu 22.04 Docker container.
