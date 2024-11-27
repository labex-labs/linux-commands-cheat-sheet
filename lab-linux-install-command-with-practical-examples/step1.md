# Install Linux Packages Using apt-get

In this step, you will learn how to install Linux packages using the `apt-get` command. The `apt-get` command is a powerful tool for managing packages on Ubuntu-based Linux distributions.

First, let's update the package lists to ensure we have the latest information about available packages:

```bash
sudo apt-get update
```

Example output:

```
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Get:2 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [114 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy-security InRelease [110 kB]
Get:4 http://archive.ubuntu.com/ubuntu jammy-backports InRelease [99.8 kB]
Fetched 324 kB in 1s (324 kB/s)
Reading package lists... Done
```

Now, let's install a package using `apt-get install`. We'll install the `tree` package, which is a command-line tool that displays the directory structure in a tree-like format:

```bash
sudo apt-get install -y tree
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libglib2.0-0 libicu70 libncurses6 libpcre2-8-0 libreadline8 libstdc++6 libtinfo6 zlib1g
Suggested packages:
  rsync
The following NEW packages will be installed:
  libglib2.0-0 libicu70 libncurses6 libpcre2-8-0 libreadline8 libstdc++6 libtinfo6 tree zlib1g
0 upgraded, 9 newly installed, 0 to remove and 0 not upgraded.
Need to get 3,010 kB of archives.
After this operation, 11.8 MB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://archive.ubuntu.com/ubuntu jammy/main amd64 libglib2.0-0 amd64 2.72.1-1ubuntu1 [1,264 kB]
...
Fetched 3,010 kB in 1s (3,010 kB/s)
Selecting previously unselected package libglib2.0-0:amd64.
(Reading database ... 17869 files and directories currently installed.)
Preparing to unpack .../libglib2.0-0_2.72.1-1ubuntu1_amd64.deb ...
Unpacking libglib2.0-0:amd64 (2.72.1-1ubuntu1) ...
...
Setting up tree (1.8.0-1ubuntu1) ...
Processing triggers for libc-bin (2.35-0ubuntu3) ...
```

The `apt-get install` command downloads the package and its dependencies, and then installs them on your system.

You can also remove packages using the `apt-get remove` command:

```bash
sudo apt-get remove -y tree
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following packages will be REMOVED:
  tree
0 upgraded, 0 newly installed, 1 to remove and 0 not upgraded.
After this operation, 116 kB of disk space will be freed.
Do you want to continue? [Y/n] Y
(Reading database ... 17874 files and directories currently installed.)
Removing tree (1.8.0-1ubuntu1) ...
Processing triggers for man-db (2.10.2-1) ...
```

The `apt-get remove` command removes the specified package from your system.
