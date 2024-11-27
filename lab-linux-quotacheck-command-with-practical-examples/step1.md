# Install Quota Package on Ubuntu 22.04

In this step, we will install the quota package on the Ubuntu 22.04 environment. The quota package provides tools to manage disk quotas, which allow system administrators to limit the amount of disk space and number of inodes that individual users or groups can consume.

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

Next, install the quota package:

```bash
sudo apt-get install quota -y
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libquota-perl
Suggested packages:
  quota-tools
The following NEW packages will be installed:
  libquota-perl quota
0 upgraded, 2 newly installed, 0 to remove and 0 not upgraded.
Need to get 123 kB of archives.
After this operation, 362 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://archive.ubuntu.com/ubuntu jammy/main amd64 libquota-perl amd64 1.8.0-1 [47.0 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy/main amd64 quota amd64 4.06-2build1 [76.0 kB]
Fetched 123 kB in 0s (1,576 kB/s)
Selecting previously unselected package libquota-perl.
(Reading database ... 16941 files and directories currently installed.)
Preparing to unpack .../libquota-perl_1.8.0-1_amd64.deb ...
Unpacking libquota-perl (1.8.0-1) ...
Selecting previously unselected package quota.
Preparing to unpack .../quota_4.06-2build1_amd64.deb ...
Unpacking quota (4.06-2build1) ...
Setting up libquota-perl (1.8.0-1) ...
Setting up quota (4.06-2build1) ...
Processing triggers for man-db (2.10.2-1) ...
```

The quota package is now installed on the Ubuntu 22.04 environment.
