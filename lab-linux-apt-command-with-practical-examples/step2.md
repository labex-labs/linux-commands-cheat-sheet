# Install and Update Packages Using apt

In this step, we will learn how to install new packages and update existing packages using the `apt` command.

First, let's update the package index to ensure we have the latest information about available packages:

```
sudo apt update
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

Now, let's install a new package, for example, the `tree` command, which displays the contents of a directory in a tree-like format:

```
sudo apt install tree
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  tree
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 55.9 kB of archives.
After this operation, 184 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://archive.ubuntu.com/ubuntu jammy/main amd64 tree amd64 1.8.0-1build1 [55.9 kB]
Fetched 55.9 kB in 0s (0 B/s)
Selecting previously unselected package tree.
(Reading database ... 116022 files and directories currently installed.)
Preparing to unpack .../tree_1.8.0-1build1_amd64.deb ...
Unpacking tree (1.8.0-1build1) ...
Setting up tree (1.8.0-1build1) ...
```

To update a package, you can use the `apt upgrade` command. This will upgrade all installed packages to their latest versions:

```
sudo apt upgrade
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Calculating upgrade... Done
The following packages will be upgraded:
  libc-bin libc6 libssl3 openssl
4 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
Need to get 3,007 kB of archives.
After this operation, 0 B of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libc-bin amd64 2.35-0ubuntu3.1 [1,114 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libc6 amd64 2.35-0ubuntu3.1 [1,693 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libssl3 amd64 3.0.2-0ubuntu1.8 [124 kB]
Get:4 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssl amd64 3.0.2-0ubuntu1.8 [76.0 kB]
Fetched 3,007 kB in 1s (2,280 kB/s)
(Reading database ... 116027 files and directories currently installed.)
Preparing to unpack .../libc-bin_2.35-0ubuntu3.1_amd64.deb ...
Unpacking libc-bin (2.35-0ubuntu3.1) over (2.35-0ubuntu3) ...
Preparing to unpack .../libc6_2.35-0ubuntu3.1_amd64.deb ...
Unpacking libc6 (2.35-0ubuntu3.1) over (2.35-0ubuntu3) ...
Preparing to unpack .../libssl3_3.0.2-0ubuntu1.8_amd64.deb ...
Unpacking libssl3 (3.0.2-0ubuntu1.8) over (3.0.2-0ubuntu1.7) ...
Preparing to unpack .../openssl_3.0.2-0ubuntu1.8_amd64.deb ...
Unpacking openssl (3.0.2-0ubuntu1.8) over (3.0.2-0ubuntu1.7) ...
Setting up libc-bin (2.35-0ubuntu3.1) ...
Setting up libc6 (2.35-0ubuntu3.1) ...
Setting up libssl3 (3.0.2-0ubuntu1.8) ...
Setting up openssl (3.0.2-0ubuntu1.8) ...
```

In the next step, we will learn how to search for packages and remove installed packages using the `apt` command.
