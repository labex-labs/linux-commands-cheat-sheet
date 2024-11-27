# Introduction to iftop Command

In this step, we will introduce the iftop command, a powerful network monitoring tool in Linux. iftop provides real-time analysis of network traffic, allowing you to observe the bandwidth usage of your system.

First, let's install the iftop package:

```bash
sudo apt-get update
sudo apt-get install -y iftop
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following package was automatically installed and is no longer required:
  libfprint-2-tod1
Use 'sudo apt autoremove' to remove it.
The following NEW packages will be installed:
  iftop
0 to upgrade, 1 to newly install, 0 to remove and 0 not to upgrade.
Need to get 59.5 kB of archives.
After this operation, 188 kB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu jammy/universe amd64 iftop amd64 1.0~pre4-5 [59.5 kB]
Fetched 59.5 kB in 0s (0 B/s)
Selecting previously unselected package iftop.
(Reading database ... 123594 files and directories currently installed.)
Preparing to unpack .../iftop_1.0~pre4-5_amd64.deb ...
Unpacking iftop (1.0~pre4-5) ...
Setting up iftop (1.0~pre4-5) ...
Processing triggers for man-db (2.10.2-1) ...
```

Now, let's run the iftop command:

```bash
sudo iftop
```

Example output:

```
@@@@ IFTOP 1.0~pre4 @@@@
 192.168.1.100 : 192.168.1.101
                 192.168.1.102
                 192.168.1.103
                 192.168.1.104
                 192.168.1.105
                 192.168.1.106
                 192.168.1.107
                 192.168.1.108
                 192.168.1.109
                 192.168.1.110

            In:  0.00 Kb/s   0.00 Kb/s   0.00 Kb/s
           Out:  0.00 Kb/s   0.00 Kb/s   0.00 Kb/s
         Total:  0.00 Kb/s   0.00 Kb/s   0.00 Kb/s
```

The iftop command displays the current network traffic on your system, showing the bandwidth usage for each connection. The output includes the source and destination IP addresses, as well as the incoming, outgoing, and total bandwidth usage.
