# Install unrar Package on Ubuntu 22.04

In this step, we will install the unrar package on our Ubuntu 22.04 system. The unrar package is a command-line tool that allows us to extract files from RAR archives.

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

Next, install the unrar package using the following command:

```bash
sudo apt-get install -y unrar
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  unrar
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 75.5 kB of archives.
After this operation, 217 kB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu jammy/multiverse amd64 unrar amd64 1:6.0.2-1.1build1 [75.5 kB]
Fetched 75.5 kB in 0s (0 B/s)
Selecting previously unselected package unrar.
(Reading database ... 63099 files and directories currently installed.)
Preparing to unpack .../unrar_1%3a6.0.2-1.1build1_amd64.deb ...
Unpacking unrar (1:6.0.2-1.1build1) ...
Setting up unrar (1:6.0.2-1.1build1) ...
Processing triggers for man-db (2.10.2-1) ...
```

The unrar package is now installed on your Ubuntu 22.04 system.
