# Install ispell on Ubuntu 22.04

In this step, we will install the ispell command-line spell checker on our Ubuntu 22.04 Docker container.

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

Next, install the ispell package:

```bash
sudo apt-get install -y ispell
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libaspell15 libhunspell-1.7-0 liblcms2-2 libmpc3 libmpfr6 libpaper-utils libpaper1
Suggested packages:
  aspell-en hunspell-en-us
The following NEW packages will be installed:
  ispell libaspell15 libhunspell-1.7-0 liblcms2-2 libmpc3 libmpfr6 libpaper-utils libpaper1
0 upgraded, 8 newly installed, 0 to remove and 0 not upgraded.
Need to get 1,519 kB of archives.
After this operation, 5,557 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://archive.ubuntu.com/ubuntu jammy/main amd64 libpaper1 amd64 1.1.28 [13.1 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy/main amd64 libpaper-utils amd64 1.1.28 [9,012 B]
Get:3 http://archive.ubuntu.com/ubuntu jammy/main amd64 libmpc3 amd64 1.2.1-1 [51.0 kB]
Get:4 http://archive.ubuntu.com/ubuntu jammy/main amd64 libmpfr6 amd64 4.1.0-3 [289 kB]
Get:5 http://archive.ubuntu.com/ubuntu jammy/main amd64 liblcms2-2 amd64 2.12-2 [168 kB]
Get:6 http://archive.ubuntu.com/ubuntu jammy/main amd64 libhunspell-1.7-0 amd64 1.7.0-3 [375 kB]
Get:7 http://archive.ubuntu.com/ubuntu jammy/main amd64 libaspell15 amd64 0.60.8-3 [575 kB]
Get:8 http://archive.ubuntu.com/ubuntu jammy/main amd64 ispell amd64 3.4.00-8 [37.0 kB]
Fetched 1,519 kB in 1s (1,519 kB/s)
Selecting previously unselected package libpaper1.
(Reading database ... 16100 files and directories currently installed.)
Preparing to unpack .../libpaper1_1.1.28_amd64.deb ...
Unpacking libpaper1 (1.1.28) ...
Selecting previously unselected package libpaper-utils.
Preparing to unpack .../libpaper-utils_1.1.28_amd64.deb ...
Unpacking libpaper-utils (1.1.28) ...
Selecting previously unselected package libmpc3:amd64.
Preparing to unpack .../libmpc3_1.2.1-1_amd64.deb ...
Unpacking libmpc3:amd64 (1.2.1-1) ...
Selecting previously unselected package libmpfr6:amd64.
Preparing to unpack .../libmpfr6_4.1.0-3_amd64.deb ...
Unpacking libmpfr6:amd64 (4.1.0-3) ...
Selecting previously unselected package liblcms2-2:amd64.
Preparing to unpack .../liblcms2-2_2.12-2_amd64.deb ...
Unpacking liblcms2-2:amd64 (2.12-2) ...
Selecting previously unselected package libhunspell-1.7-0:amd64.
Preparing to unpack .../libhunspell-1.7-0_1.7.0-3_amd64.deb ...
Unpacking libhunspell-1.7-0:amd64 (1.7.0-3) ...
Selecting previously unselected package libaspell15.
Preparing to unpack .../libaspell15_0.60.8-3_amd64.deb ...
Unpacking libaspell15 (0.60.8-3) ...
Selecting previously unselected package ispell.
Preparing to unpack .../ispell_3.4.00-8_amd64.deb ...
Unpacking ispell (3.4.00-8) ...
Setting up libpaper1 (1.1.28) ...
Setting up libpaper-utils (1.1.28) ...
Setting up libmpc3:amd64 (1.2.1-1) ...
Setting up libmpfr6:amd64 (4.1.0-3) ...
Setting up liblcms2-2:amd64 (2.12-2) ...
Setting up libhunspell-1.7-0:amd64 (1.7.0-3) ...
Setting up libaspell15 (0.60.8-3) ...
Setting up ispell (3.4.00-8) ...
Processing triggers for libc-bin (2.35-0ubuntu3) ...
Processing triggers for man-db (2.10.2-1) ...
```

The ispell package is now installed on our Ubuntu 22.04 Docker container.
