# Install Linux Packages Using apt

In this step, you will learn how to install Linux packages using the `apt` command. The `apt` command is a user-friendly interface for the `apt-get` command, providing a simpler and more intuitive way to manage packages.

Let's start by updating the package lists again:

```bash
sudo apt update
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

Now, let's install the `htop` package, which is a popular system monitoring tool:

```bash
sudo apt install -y htop
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libncursesw6 libsensors-config libsensors5 libstdc++6
Suggested packages:
  lm-sensors
The following NEW packages will be installed:
  htop libncursesw6 libsensors-config libsensors5 libstdc++6
0 upgraded, 5 newly installed, 0 to remove and 0 not upgraded.
Need to get 390 kB of archives.
After this operation, 1,493 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://archive.ubuntu.com/ubuntu jammy/main amd64 libncursesw6 amd64 6.3-2 [115 kB]
...
Fetched 390 kB in 1s (390 kB/s)
Selecting previously unselected package libncursesw6:amd64.
(Reading database ... 17874 files and directories currently installed.)
Preparing to unpack .../libncursesw6_6.3-2_amd64.deb ...
Unpacking libncursesw6:amd64 (6.3-2) ...
...
Setting up htop (3.0.5-1) ...
Processing triggers for man-db (2.10.2-1) ...
```

The `apt install` command downloads the package and its dependencies, and then installs them on your system.

You can also remove packages using the `apt remove` command:

```bash
sudo apt remove -y htop
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following packages will be REMOVED:
  htop
0 upgraded, 0 newly installed, 1 to remove and 0 not upgraded.
After this operation, 1,493 kB of disk space will be freed.
Do you want to continue? [Y/n] Y
(Reading database ... 17879 files and directories currently installed.)
Removing htop (3.0.5-1) ...
Processing triggers for man-db (2.10.2-1) ...
```

The `apt remove` command removes the specified package from your system.
