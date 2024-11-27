# Install and Update aptitude Package Manager

In this step, we will install and update the aptitude package manager on our Ubuntu 22.04 Docker container.

First, let's update the package index to ensure we have the latest package information:

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

Next, let's install the aptitude package manager:

```bash
sudo apt-get install -y aptitude
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  aptitude-common libboost-iostreams1.74.0 libboost-system1.74.0 libcwidget3v5 libept1.5.0 libxapian30
Suggested packages:
  aptitude-doc-en aptitude-doc
The following NEW packages will be installed:
  aptitude aptitude-common libboost-iostreams1.74.0 libboost-system1.74.0 libcwidget3v5 libept1.5.0 libxapian30
0 upgraded, 7 newly installed, 0 to remove and 0 not upgraded.
Need to get 1,450 kB of archives.
After this operation, 5,580 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://archive.ubuntu.com/ubuntu jammy/main amd64 libboost-iostreams1.74.0 amd64 1.74.0-8ubuntu3 [139 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy/main amd64 libboost-system1.74.0 amd64 1.74.0-8ubuntu3 [94.7 kB]
...
Fetched 1,450 kB in 1s (1,450 kB/s)
Selecting previously unselected package aptitude-common.
(Reading database ... 18284 files and directories currently installed.)
Preparing to unpack .../aptitude-common_0.8.12-1ubuntu1_all.deb ...
Unpacking aptitude-common (0.8.12-1ubuntu1) ...
Selecting previously unselected package aptitude.
Preparing to unpack .../aptitude_0.8.12-1ubuntu1_amd64.deb ...
Unpacking aptitude (0.8.12-1ubuntu1) ...
Setting up libboost-iostreams1.74.0:amd64 (1.74.0-8ubuntu3) ...
Setting up libboost-system1.74.0:amd64 (1.74.0-8ubuntu3) ...
Setting up libcwidget3v5:amd64 (0.5.17-7build1) ...
Setting up libept1.5.0:amd64 (1.1+nmu3ubuntu2) ...
Setting up libxapian30:amd64 (1.4.18-3ubuntu1) ...
Setting up aptitude-common (0.8.12-1ubuntu1) ...
Setting up aptitude (0.8.12-1ubuntu1) ...
Processing triggers for man-db (2.10.2-1) ...
Processing triggers for libc-bin (2.35-0ubuntu3) ...
```

Now, let's verify that aptitude is installed and up-to-date:
