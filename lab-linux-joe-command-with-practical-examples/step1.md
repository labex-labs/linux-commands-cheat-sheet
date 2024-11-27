# Install joe Text Editor on Ubuntu 22.04

In this step, we will install the joe text editor on the Ubuntu 22.04 Docker container environment.

First, let's update the package index and install the joe package:

```bash
sudo apt-get update
sudo apt-get install -y joe
```

Example output:

```
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Get:2 http://security.ubuntu.com/ubuntu jammy-security InRelease [110 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [114 kB]
Get:4 http://archive.ubuntu.com/ubuntu jammy-backports InRelease [99.8 kB]
Fetched 324 kB in 1s (324 kB/s)
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libncurses6 libslang2
Suggested packages:
  joe-doc
The following NEW packages will be installed:
  joe libncurses6 libslang2
0 upgraded, 3 newly installed, 0 to remove and 0 not upgraded.
Need to get 398 kB of archives.
After this operation, 1,239 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://archive.ubuntu.com/ubuntu jammy/main amd64 libncurses6 amd64 6.3-2 [115 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy/main amd64 libslang2 amd64 2.3.2-5build2 [168 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy/main amd64 joe amd64 4.8-1build1 [115 kB]
Fetched 398 kB in 0s (1,150 kB/s)
Selecting previously unselected package libncurses6:amd64.
(Reading database ... 14481 files and directories currently installed.)
Preparing to unpack .../libncurses6_6.3-2_amd64.deb ...
Unpacking libncurses6:amd64 (6.3-2) ...
Selecting previously unselected package libslang2:amd64.
Preparing to unpack .../libslang2_2.3.2-5build2_amd64.deb ...
Unpacking libslang2:amd64 (2.3.2-5build2) ...
Selecting previously unselected package joe.
Preparing to unpack .../joe_4.8-1build1_amd64.deb ...
Unpacking joe (4.8-1build1) ...
Setting up libncurses6:amd64 (6.3-2) ...
Setting up libslang2:amd64 (2.3.2-5build2) ...
Setting up joe (4.8-1build1) ...
Processing triggers for man-db (2.10.2-1) ...
```

The joe text editor is now installed on the Ubuntu 22.04 Docker container.
