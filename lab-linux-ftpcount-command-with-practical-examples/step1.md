# Install the ftpcount Command

In this step, we will install the `ftpcount` command on our Ubuntu 22.04 Docker container.

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

Next, install the `ftpcount` package:

```bash
sudo apt-get install -y ftpcount
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  ftpcount
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 18.3 kB of archives.
After this operation, 55.3 kB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu jammy/universe amd64 ftpcount amd64 2.7-1 [18.3 kB]
Fetched 18.3 kB in 0s (0 B/s)
Selecting previously unselected package ftpcount.
(Reading database ... 18248 files and directories currently installed.)
Preparing to unpack .../ftpcount_2.7-1_amd64.deb ...
Unpacking ftpcount (2.7-1) ...
Setting up ftpcount (2.7-1) ...
Processing triggers for man-db (2.10.2-1) ...
```

The `ftpcount` package is now installed on our system.
