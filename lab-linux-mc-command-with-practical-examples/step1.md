# Install Midnight Commander (mc) on Ubuntu 22.04

In this step, we will install the Midnight Commander (mc) file manager on the Ubuntu 22.04 environment.

First, update the package index:

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

Next, install the Midnight Commander package:

```bash
sudo apt-get install -y mc
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libglib2.0-0 libslang2
Suggested packages:
  mc-data
The following NEW packages will be installed:
  libglib2.0-0 libslang2 mc
0 upgraded, 3 newly installed, 0 to remove and 0 not upgraded.
Need to get 2,063 kB of archives.
After this operation, 5,500 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://archive.ubuntu.com/ubuntu jammy/main amd64 libglib2.0-0 amd64 2.72.1-1ubuntu1 [1,231 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy/universe amd64 libslang2 amd64 2.3.2-5build2 [368 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy/universe amd64 mc amd64 3.4.3-3build1 [464 kB]
Fetched 2,063 kB in 1s (2,063 kB/s)
Selecting previously unselected package libglib2.0-0:amd64.
(Reading database ... 14868 files and directories currently installed.)
Preparing to unpack .../libglib2.0-0_2.72.1-1ubuntu1_amd64.deb ...
Unpacking libglib2.0-0:amd64 (2.72.1-1ubuntu1) ...
Selecting previously unselected package libslang2:amd64.
Preparing to unpack .../libslang2_2.3.2-5build2_amd64.deb ...
Unpacking libslang2:amd64 (2.3.2-5build2) ...
Selecting previously unselected package mc.
Preparing to unpack .../mc_3.4.3-3build1_amd64.deb ...
Unpacking mc (3.4.3-3build1) ...
Setting up libglib2.0-0:amd64 (2.72.1-1ubuntu1) ...
Setting up libslang2:amd64 (2.3.2-5build2) ...
Setting up mc (3.4.3-3build1) ...
Processing triggers for man-db (2.10.2-1) ...
Processing triggers for libc-bin (2.35-0ubuntu3) ...
```

The Midnight Commander (mc) is now installed on your Ubuntu 22.04 environment.
