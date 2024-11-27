# Install CMake on Ubuntu 22.04

In this step, we will install CMake, a popular build automation tool, on our Ubuntu 22.04 environment.

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

Next, install the necessary packages for CMake:

```bash
sudo apt-get install -y cmake
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  cmake-data libarchive13 libjsoncpp24 librhash0 libssl-dev libssl1.1
Suggested packages:
  cmake-doc
The following NEW packages will be installed:
  cmake cmake-data libarchive13 libjsoncpp24 librhash0 libssl-dev libssl1.1
0 upgraded, 7 newly installed, 0 to remove and 0 not upgraded.
Need to get 15.6 MB of archives.
After this operation, 67.6 MB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://archive.ubuntu.com/ubuntu jammy/main amd64 libssl1.1 amd64 1.1.1m-3ubuntu1 [1,296 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy/main amd64 libssl-dev amd64 1.1.1m-3ubuntu1 [1,547 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy/main amd64 libarchive13 amd64 3.5.2-2 [262 kB]
Get:4 http://archive.ubuntu.com/ubuntu jammy/main amd64 libjsoncpp24 amd64 1.9.5-2 [104 kB]
Get:5 http://archive.ubuntu.com/ubuntu jammy/main amd64 librhash0 amd64 1.4.2-1 [106 kB]
Get:6 http://archive.ubuntu.com/ubuntu jammy/universe amd64 cmake-data all 3.22.1-1ubuntu1 [1,605 kB]
Get:7 http://archive.ubuntu.com/ubuntu jammy/universe amd64 cmake amd64 3.22.1-1ubuntu1 [10.7 MB]
Fetched 15.6 MB in 3s (5,204 kB/s)
Selecting previously unselected package libssl1.1:amd64.
(Reading database ... 78852 files and directories currently installed.)
Preparing to unpack .../libssl1.1_1.1.1m-3ubuntu1_amd64.deb ...
Unpacking libssl1.1:amd64 (1.1.1m-3ubuntu1) ...
Selecting previously unselected package libssl-dev:amd64.
Preparing to unpack .../libssl-dev_1.1.1m-3ubuntu1_amd64.deb ...
Unpacking libssl-dev:amd64 (1.1.1m-3ubuntu1) ...
Selecting previously unselected package libarchive13:amd64.
Preparing to unpack .../libarchive13_3.5.2-2_amd64.deb ...
Unpacking libarchive13:amd64 (3.5.2-2) ...
Selecting previously unselected package libjsoncpp24:amd64.
Preparing to unpack .../libjsoncpp24_1.9.5-2_amd64.deb ...
Unpacking libjsoncpp24:amd64 (1.9.5-2) ...
Selecting previously unselected package librhash0:amd64.
Preparing to unpack .../librhash0_1.4.2-1_amd64.deb ...
Unpacking librhash0:amd64 (1.4.2-1) ...
Selecting previously unselected package cmake-data.
Preparing to unpack .../cmake-data_3.22.1-1ubuntu1_all.deb ...
Unpacking cmake-data (3.22.1-1ubuntu1) ...
Selecting previously unselected package cmake.
Preparing to unpack .../cmake_3.22.1-1ubuntu1_amd64.deb ...
Unpacking cmake (3.22.1-1ubuntu1) ...
Setting up libssl1.1:amd64 (1.1.1m-3ubuntu1) ...
Setting up libssl-dev:amd64 (1.1.1m-3ubuntu1) ...
Setting up libarchive13:amd64 (3.5.2-2) ...
Setting up libjsoncpp24:amd64 (1.9.5-2) ...
Setting up librhash0:amd64 (1.4.2-1) ...
Setting up cmake-data (3.22.1-1ubuntu1) ...
Setting up cmake (3.22.1-1ubuntu1) ...
Processing triggers for man-db (2.10.2-1) ...
Processing triggers for libc-bin (2.35-0ubuntu3) ...
```

The installation is now complete. You can verify the CMake version by running:

```bash
cmake --version
```

Example output:

```
cmake version 3.22.1

CMake suite maintained and supported by Kitware (kitware.com/cmake).
```

Great! We have successfully installed CMake on our Ubuntu 22.04 environment.
