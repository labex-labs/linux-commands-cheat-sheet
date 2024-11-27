# Install and Configure iotop on Ubuntu 22.04

In this step, you will learn how to install and configure the iotop command on your Ubuntu 22.04 system.

First, let's update the package index and install the iotop package:

```bash
sudo apt-get update
sudo apt-get install -y iotop
```

Example output:

```
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Get:2 http://security.ubuntu.com/ubuntu jammy-security InRelease [110 kB]
...
Fetching 172 kB in 0s (0 B/s)
Extracting templates from packages: 100%
Reading package lists... Done
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  iotop
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 44.5 kB of archives.
After this operation, 141 kB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu jammy/universe amd64 iotop amd64 1.22-2 [44.5 kB]
Fetching packages...
Selecting previously unselected package iotop.
(Reading database ... 25105 files and directories currently installed.)
Preparing to unpack .../iotop_1.22-2_amd64.deb ...
Unpacking iotop (1.22-2) ...
Setting up iotop (1.22-2) ...
Processing triggers for man-db (2.10.2-1) ...
```

Now that iotop is installed, let's explore its configuration options. iotop doesn't require any specific configuration, but you can customize its behavior by using command-line options.

Some commonly used iotop options include:

- `-o`: Only show processes actually doing I/O
- `-b`: Print in a batch mode, without ncurses
- `-n NUM`: Number of iterations before ending
- `-d DELAY`: Delay between iterations, in seconds (default 3)

For example, to run iotop in batch mode and show only the processes actually doing I/O, you can use the following command:

```bash
sudo iotop -o -b
```

Example output:

```
Total DISK READ: 0.00 B/s | Total DISK WRITE: 0.00 B/s
  TID  PRIO  USER     DISK READ  DISK WRITE  SWAPIN     IO>    COMMAND
  1234 be/4 labex     0.00 B/s   0.00 B/s  0.00 %  0.00 % iotop
  5678 be/4 labex     0.00 B/s   0.00 B/s  0.00 %  0.00 % bash
  9012 be/4 labex     0.00 B/s   0.00 B/s  0.00 %  0.00 % sleep 60
```

This will run iotop in batch mode, displaying only the processes that are currently performing disk I/O.

Now that you have installed and configured iotop, let's move on to the next step, where you will learn how to analyze disk I/O usage with iotop.
